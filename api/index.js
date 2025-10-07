const express = require('express');
const mysql = require('mysql2/promise');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const { body, validationResult } = require('express-validator');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

// Security middleware
app.use(helmet());
app.use(cors({
    origin: process.env.CLIENT_URL || 'http://localhost:8000',
    credentials: true
}));

// Rate limiting
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 100 // limit each IP to 100 requests per windowMs
});
app.use(limiter);

// Body parsing middleware
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true }));

// Database connection
let db;
let dbConnected = false;

async function initDatabase() {
    try {
        db = await mysql.createConnection({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASSWORD,
            database: process.env.DB_NAME,
            port: process.env.DB_PORT
        });
        console.log('Connected to MySQL database');
        dbConnected = true;
    } catch (error) {
        console.error('Database connection failed:', error);
        console.log('Server will start without database connection. Please fix database connection and restart.');
        dbConnected = false;
        db = null;
    }
}

// JWT middleware for protected routes
const authenticateToken = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];

    if (!token) {
        return res.status(401).json({ error: 'Access denied. No token provided.' });
    }

    try {
        const decoded = jwt.verify(token, process.env.JWT_SECRET);
        req.user = decoded;
        next();
    } catch (error) {
        res.status(403).json({ error: 'Invalid token.' });
    }
};

// Database connection middleware
const checkDatabaseConnection = (req, res, next) => {
    if (!dbConnected || !db) {
        return res.status(503).json({ 
            error: 'Database not available. Please check database connection and try again.',
            details: 'MySQL service may not be running. Please start MySQL service and restart the server.'
        });
    }
    next();
};

// Validation middleware
const handleValidationErrors = (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    next();
};

// ===================== API ROUTES =====================

// Health check endpoint
app.get('/api/health', (req, res) => {
    res.json({ 
        status: 'Server is running',
        database: dbConnected ? 'Connected' : 'Disconnected',
        timestamp: new Date().toISOString()
    });
});

// ===================== AUTHENTICATION ROUTES =====================

// User Registration
app.post('/api/auth/register', [
    body('name').trim().isLength({ min: 2 }).withMessage('Name must be at least 2 characters'),
    body('email').isEmail().withMessage('Valid email is required'),
    body('password').isLength({ min: 6 }).withMessage('Password must be at least 6 characters'),
    handleValidationErrors,
    checkDatabaseConnection
], async (req, res) => {
    try {
        const { name, email, password } = req.body;

        // Check if user already exists
        const [existingUsers] = await db.execute(
            'SELECT id FROM users WHERE email = ?',
            [email]
        );

        if (existingUsers.length > 0) {
            return res.status(400).json({ error: 'User with this email already exists' });
        }

        // Hash password
        const hashedPassword = await bcrypt.hash(password, parseInt(process.env.BCRYPT_ROUNDS));

        // Create user
        const [result] = await db.execute(
            'INSERT INTO users (name, email, password_hash) VALUES (?, ?, ?)',
            [name, email, hashedPassword]
        );

        // Generate JWT token
        const token = jwt.sign(
            { id: result.insertId, email },
            process.env.JWT_SECRET,
            { expiresIn: process.env.JWT_EXPIRE }
        );

        res.status(201).json({
            message: 'User registered successfully',
            token,
            user: {
                id: result.insertId,
                name,
                email
            }
        });
    } catch (error) {
        console.error('Registration error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// User Login
app.post('/api/auth/login', [
    body('email').isEmail().withMessage('Valid email is required'),
    body('password').notEmpty().withMessage('Password is required'),
    handleValidationErrors,
    checkDatabaseConnection
], async (req, res) => {
    try {
        const { email, password } = req.body;

        // Find user
        const [users] = await db.execute(
            'SELECT id, name, email, password_hash FROM users WHERE email = ?',
            [email]
        );

        if (users.length === 0) {
            return res.status(400).json({ error: 'Invalid email or password' });
        }

        const user = users[0];

        // Check password
        const validPassword = await bcrypt.compare(password, user.password_hash);
        if (!validPassword) {
            return res.status(400).json({ error: 'Invalid email or password' });
        }

        // Generate JWT token
        const token = jwt.sign(
            { id: user.id, email: user.email },
            process.env.JWT_SECRET,
            { expiresIn: process.env.JWT_EXPIRE }
        );

        res.json({
            message: 'Login successful',
            token,
            user: {
                id: user.id,
                name: user.name,
                email: user.email
            }
        });
    } catch (error) {
        console.error('Login error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Get User Profile
app.get('/api/auth/profile', authenticateToken, async (req, res) => {
    try {
        const [users] = await db.execute(
            'SELECT id, name, email, created_at FROM users WHERE id = ?',
            [req.user.id]
        );

        if (users.length === 0) {
            return res.status(404).json({ error: 'User not found' });
        }

        res.json({ user: users[0] });
    } catch (error) {
        console.error('Profile error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// ===================== COURSE ROUTES =====================

// Get All Courses
app.get('/api/courses', async (req, res) => {
    try {
        const [courses] = await db.execute(`
            SELECT c.id, c.title, c.description, c.duration, c.level, c.created_at, c.updated_at,
                   COUNT(l.id) as lesson_count,
                   MAX(CASE WHEN up.user_id IS NOT NULL THEN 1 ELSE 0 END) as completed
            FROM courses c 
            LEFT JOIN lessons l ON c.id = l.course_id 
            LEFT JOIN user_progress up ON c.id = up.course_id AND up.user_id = ? AND up.completed = true
            GROUP BY c.id, c.title, c.description, c.duration, c.level, c.created_at, c.updated_at
            ORDER BY c.id
        `, [req.user?.id || 0]);

        res.json({ courses });
    } catch (error) {
        console.error('Courses error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Get Course Details with Lessons
app.get('/api/courses/:id', async (req, res) => {
    try {
        const courseId = parseInt(req.params.id);

        // Get course details
        const [courses] = await db.execute(
            'SELECT * FROM courses WHERE id = ?',
            [courseId]
        );

        if (courses.length === 0) {
            return res.status(404).json({ error: 'Course not found' });
        }

        // Get course lessons
        const [lessons] = await db.execute(
            'SELECT * FROM lessons WHERE course_id = ? ORDER BY order_index',
            [courseId]
        );

        // Get user progress if authenticated
        let userProgress = null;
        if (req.user) {
            const [progress] = await db.execute(`
                SELECT lesson_id, completed, completed_at 
                FROM user_progress 
                WHERE user_id = ? AND course_id = ?
            `, [req.user.id, courseId]);
            userProgress = progress;
        }

        // Get quiz questions
        const [quiz] = await db.execute(
            'SELECT * FROM quiz_questions WHERE course_id = ? ORDER BY order_index',
            [courseId]
        );

        const course = courses[0];
        course.lessons = lessons;
        course.userProgress = userProgress;
        course.quiz = { questions: quiz };

        res.json({ course });
    } catch (error) {
        console.error('Course detail error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Get Lesson Content
app.get('/api/courses/:courseId/lessons/:lessonId', authenticateToken, async (req, res) => {
    try {
        const { courseId, lessonId } = req.params;

        const [lessons] = await db.execute(
            'SELECT * FROM lessons WHERE id = ? AND course_id = ?',
            [lessonId, courseId]
        );

        if (lessons.length === 0) {
            return res.status(404).json({ error: 'Lesson not found' });
        }

        res.json({ lesson: lessons[0] });
    } catch (error) {
        console.error('Lesson error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// ===================== PROGRESS ROUTES =====================

// Mark Lesson Complete
app.post('/api/progress/lesson/:lessonId/complete', authenticateToken, async (req, res) => {
    try {
        const lessonId = parseInt(req.params.lessonId);

        // Get lesson and course info
        const [lessons] = await db.execute(
            'SELECT course_id FROM lessons WHERE id = ?',
            [lessonId]
        );

        if (lessons.length === 0) {
            return res.status(404).json({ error: 'Lesson not found' });
        }

        const courseId = lessons[0].course_id;

        // Check if already completed
        const [existing] = await db.execute(
            'SELECT id FROM user_progress WHERE user_id = ? AND course_id = ? AND lesson_id = ?',
            [req.user.id, courseId, lessonId]
        );

        if (existing.length > 0) {
            // Update existing record
            await db.execute(
                'UPDATE user_progress SET completed = true, completed_at = NOW() WHERE id = ?',
                [existing[0].id]
            );
        } else {
            // Create new record
            await db.execute(
                'INSERT INTO user_progress (user_id, course_id, lesson_id, completed, completed_at) VALUES (?, ?, ?, true, NOW())',
                [req.user.id, courseId, lessonId]
            );
        }

        res.json({ message: 'Lesson marked as complete' });
    } catch (error) {
        console.error('Progress error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Save Course Progress
app.post('/api/progress/course', authenticateToken, [
    body('courseId').isInt().withMessage('Course ID is required'),
    body('completed').isBoolean().withMessage('Completed status is required'),
    handleValidationErrors
], async (req, res) => {
    try {
        const { courseId, completed } = req.body;

        // Check if course exists
        const [courses] = await db.execute(
            'SELECT id FROM courses WHERE id = ?',
            [courseId]
        );

        if (courses.length === 0) {
            return res.status(404).json({ error: 'Course not found' });
        }

        // Check if course progress already exists
        const [existing] = await db.execute(
            'SELECT id FROM user_progress WHERE user_id = ? AND course_id = ? AND lesson_id IS NULL',
            [req.user.id, courseId]
        );

        if (existing.length > 0) {
            // Update existing course progress
            await db.execute(
                'UPDATE user_progress SET completed = ?, completed_at = ? WHERE id = ?',
                [completed, completed ? new Date() : null, existing[0].id]
            );
        } else {
            // Create new course progress record
            await db.execute(
                'INSERT INTO user_progress (user_id, course_id, lesson_id, completed, completed_at) VALUES (?, ?, NULL, ?, ?)',
                [req.user.id, courseId, completed, completed ? new Date() : null]
            );
        }

        res.json({ 
            message: completed ? 'Course marked as complete' : 'Course progress saved',
            courseId,
            completed
        });
    } catch (error) {
        console.error('Course progress error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Get Quiz Questions
app.get('/api/courses/:courseId/quiz/questions', authenticateToken, async (req, res) => {
    try {
        const courseId = parseInt(req.params.courseId);

        // Check if course exists
        const [courses] = await db.execute(
            'SELECT id FROM courses WHERE id = ?',
            [courseId]
        );

        if (courses.length === 0) {
            return res.status(404).json({ error: 'Course not found' });
        }

        // Get quiz questions for this course
        const [questions] = await db.execute(
            'SELECT id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index FROM quiz_questions WHERE course_id = ? ORDER BY order_index',
            [courseId]
        );

        res.json(questions);
    } catch (error) {
        console.error('Quiz questions error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Submit Quiz
app.post('/api/courses/:courseId/quiz/submit', authenticateToken, [
    body('answers').isArray().withMessage('Answers must be an array'),
    handleValidationErrors
], async (req, res) => {
    try {
        const courseId = parseInt(req.params.courseId);
        const { answers } = req.body;

        // Get quiz questions
        const [questions] = await db.execute(
            'SELECT id, correct_answer FROM quiz_questions WHERE course_id = ? ORDER BY order_index',
            [courseId]
        );

        // Calculate score
        let correctAnswers = 0;
        const totalQuestions = questions.length;

        answers.forEach((answer, index) => {
            if (questions[index] && answer === questions[index].correct_answer) {
                correctAnswers++;
            }
        });

        const score = Math.round((correctAnswers / totalQuestions) * 100);
        const passed = score >= 60;

        // Save quiz attempt
        await db.execute(
            'INSERT INTO quiz_attempts (user_id, course_id, score, answers, passed, attempted_at) VALUES (?, ?, ?, ?, ?, NOW())',
            [req.user.id, courseId, score, JSON.stringify(answers), passed]
        );

        // If passed, mark course as complete
        if (passed) {
            const [existing] = await db.execute(
                'SELECT id FROM user_progress WHERE user_id = ? AND course_id = ? AND lesson_id IS NULL',
                [req.user.id, courseId]
            );

            if (existing.length > 0) {
                await db.execute(
                    'UPDATE user_progress SET completed = true, completed_at = NOW() WHERE id = ?',
                    [existing[0].id]
                );
            } else {
                await db.execute(
                    'INSERT INTO user_progress (user_id, course_id, completed, completed_at) VALUES (?, ?, true, NOW())',
                    [req.user.id, courseId]
                );
            }
        }

        res.json({
            score,
            correctAnswers,
            totalQuestions,
            passed,
            message: passed ? 'Quiz passed! Course completed.' : 'Quiz failed. Please try again.'
        });
    } catch (error) {
        console.error('Quiz submission error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Submit Survey
app.post('/api/courses/:courseId/survey/submit', authenticateToken, [
    body('rating').isInt({ min: 1, max: 5 }).withMessage('Rating must be between 1 and 5'),
    handleValidationErrors
], async (req, res) => {
    try {
        const courseId = parseInt(req.params.courseId);
        const { rating, liked, improvement, recommend } = req.body;

        await db.execute(
            'INSERT INTO survey_responses (user_id, course_id, rating, liked, improvement, recommend, submitted_at) VALUES (?, ?, ?, ?, ?, ?, NOW())',
            [req.user.id, courseId, rating, liked || '', improvement || '', recommend || false]
        );

        res.json({ message: 'Survey submitted successfully' });
    } catch (error) {
        console.error('Survey submission error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Get User Progress
app.get('/api/progress/user/:userId', authenticateToken, async (req, res) => {
    try {
        const userId = parseInt(req.params.userId);

        // Only allow users to see their own progress
        if (req.user.id !== userId) {
            return res.status(403).json({ error: 'Access denied' });
        }

        const [progress] = await db.execute(`
            SELECT 
                c.id as course_id,
                c.title as course_title,
                up.completed as course_completed,
                up.completed_at as course_completed_at,
                COUNT(l.id) as total_lessons,
                COUNT(CASE WHEN lp.completed = true THEN 1 END) as completed_lessons
            FROM courses c
            LEFT JOIN user_progress up ON c.id = up.course_id AND up.user_id = ? AND up.lesson_id IS NULL
            LEFT JOIN lessons l ON c.id = l.course_id
            LEFT JOIN user_progress lp ON l.id = lp.lesson_id AND lp.user_id = ?
            GROUP BY c.id, c.title, up.completed, up.completed_at
            ORDER BY c.id
        `, [userId, userId]);

        res.json({ progress });
    } catch (error) {
        console.error('User progress error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Health check endpoint
app.get('/api/health', (req, res) => {
    res.json({ status: 'OK', timestamp: new Date().toISOString() });
});

// Error handling middleware
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json({ error: 'Something went wrong!' });
});

// 404 handler
app.use('*', (req, res) => {
    res.status(404).json({ error: 'Route not found' });
});

// Initialize database when the function starts
(async () => {
    await initDatabase();
})();

// Export the app for Vercel
module.exports = app;