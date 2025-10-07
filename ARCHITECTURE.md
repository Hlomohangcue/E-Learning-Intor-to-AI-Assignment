# System Architecture Documentation
## EasyLearn E-Learning Platform

### Overview
EasyLearn is a client-side e-learning platform built with vanilla HTML, CSS, and JavaScript. It provides a complete learning management system with user authentication, course management, and progress tracking.

### Architecture Diagram
```
┌─────────────────────────────────────────────────────────────┐
│                    PRESENTATION LAYER                        │
├─────────────────────────────────────────────────────────────┤
│ HTML Structure          │ CSS Styling         │ JavaScript   │
│ - index.html            │ - styles.css        │ - script.js  │
│ - Semantic markup       │ - Responsive design │ - App logic  │
│ - Modal dialogs         │ - Animations        │ - State mgmt │
│ - Course layouts        │ - Components        │ - Events     │
└─────────────────────────────────────────────────────────────┘
                                   │
                                   ▼
┌─────────────────────────────────────────────────────────────┐
│                    APPLICATION LAYER                         │
├─────────────────────────────────────────────────────────────┤
│ Core Modules                                                │
│ ├── Authentication Module                                   │
│ │   ├── User Registration                                   │
│ │   ├── Login/Logout                                       │
│ │   └── Session Management                                  │
│ ├── Course Management Module                               │
│ │   ├── Course Rendering                                   │
│ │   ├── Lesson Display                                     │
│ │   └── Progress Tracking                                  │
│ ├── Navigation Module                                      │
│ │   ├── Section Switching                                  │
│ │   ├── Modal Management                                   │
│ │   └── Route Handling                                     │
│ └── Utility Module                                         │
│     ├── Local Storage                                      │
│     ├── Form Validation                                    │
│     └── UI Helpers                                         │
└─────────────────────────────────────────────────────────────┘
                                   │
                                   ▼
┌─────────────────────────────────────────────────────────────┐
│                     DATA LAYER                              │
├─────────────────────────────────────────────────────────────┤
│ Browser Storage (localStorage)                              │
│ ├── User Accounts                                          │
│ │   ├── users: Array of user objects                      │
│ │   └── currentUser: Active session data                  │
│ ├── Course Progress                                        │
│ │   └── completedCourses: Array of course IDs             │
│ └── Application State                                      │
│     ├── Current section                                    │
│     └── UI preferences                                     │
└─────────────────────────────────────────────────────────────┘
```

### Data Models

#### User Model
```javascript
User {
  id: Number,           // Unique identifier (timestamp)
  name: String,         // Full name
  email: String,        // Email address (unique)
  password: String,     // Password (plain text - demo only)
  registeredAt: String  // ISO date string
}
```

#### Course Model
```javascript
Course {
  id: Number,           // Unique identifier
  title: String,        // Course title
  description: String,  // Course description
  duration: String,     // Duration (e.g., "4 weeks")
  level: String,        // Difficulty level
  lessons: Array<Lesson>, // Array of lesson objects
  completed: Boolean    // Completion status
}
```

#### Lesson Model
```javascript
Lesson {
  title: String,        // Lesson title
  content: {
    overview: String,   // Lesson overview
    content: String     // HTML content with examples
  }
}
```

### Component Architecture

#### Core Components
1. **Navigation Component**
   - Header navigation
   - Mobile hamburger menu
   - Authentication buttons
   - User info display

2. **Course Components**
   - Course grid layout
   - Course cards
   - Course detail view
   - Lesson viewer modal

3. **Authentication Components**
   - Login modal
   - Registration modal
   - User session management

4. **Profile Components**
   - Statistics dashboard
   - Progress tracking
   - Completion history

### State Management

#### Application State
```javascript
AppState {
  currentUser: User | null,     // Authenticated user
  currentSection: String,       // Active navigation section
  currentCourse: Course | null, // Course being viewed
  currentLessonIndex: Number,   // Active lesson index
  coursesData: Array<Course>    // All course data
}
```

#### State Flow
1. **Initial Load**: Load user session and course data
2. **Authentication**: Update currentUser state
3. **Navigation**: Switch between sections
4. **Course Interaction**: Update course/lesson state
5. **Persistence**: Save state to localStorage

### Security Considerations

#### Current Implementation (Demo Level)
- Plain text password storage
- Client-side only authentication
- No encryption or hashing
- Basic form validation

#### Production Recommendations
- Password hashing (bcrypt)
- JWT token authentication
- HTTPS enforcement
- Input sanitization
- Rate limiting
- Session timeouts

### Performance Optimization

#### Current Optimizations
- CSS animations with GPU acceleration
- Event delegation for dynamic content
- Lazy loading of lesson content
- Efficient DOM manipulation

#### Future Optimizations
- Image lazy loading
- Code splitting
- Service worker caching
- Virtual scrolling for large lists
- CSS/JS minification

### Browser Compatibility
- **Modern Browsers**: Chrome 60+, Firefox 55+, Safari 12+, Edge 79+
- **Features Used**: 
  - ES6+ JavaScript (const, let, arrow functions, template literals)
  - CSS Grid and Flexbox
  - localStorage API
  - Fetch API (if implemented)

### File Structure
```
easylearn/
├── index.html          # Main HTML file
├── styles.css          # All CSS styles
├── script.js           # All JavaScript functionality
├── README.md           # User documentation
├── ARCHITECTURE.md     # This file
├── TECHNICAL_SPECS.md  # Technical specifications
├── DEVELOPER_GUIDE.md  # Development guidelines
└── ROADMAP.md          # Future development plans
```

### API Endpoints (Future Backend Integration)
```
Authentication:
POST   /api/auth/register    # User registration
POST   /api/auth/login       # User login
POST   /api/auth/logout      # User logout
GET    /api/auth/profile     # Get user profile

Courses:
GET    /api/courses          # List all courses
GET    /api/courses/:id      # Get course details
GET    /api/courses/:id/lessons/:lessonId  # Get lesson content

Progress:
POST   /api/progress/course/:id/complete    # Mark course complete
POST   /api/progress/lesson/:id/complete    # Mark lesson complete
GET    /api/progress/user/:id               # Get user progress
```

### Database Schema (Future Implementation)
```sql
-- Users table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Courses table
CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  duration VARCHAR(50),
  level VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Lessons table
CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  course_id INTEGER REFERENCES courses(id),
  title VARCHAR(255) NOT NULL,
  content TEXT,
  order_index INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- User progress table
CREATE TABLE user_progress (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  course_id INTEGER REFERENCES courses(id),
  lesson_id INTEGER REFERENCES lessons(id),
  completed BOOLEAN DEFAULT FALSE,
  completed_at TIMESTAMP
);
```

### Monitoring and Analytics (Future)
- User engagement metrics
- Course completion rates
- Popular content tracking
- Performance monitoring
- Error tracking and logging