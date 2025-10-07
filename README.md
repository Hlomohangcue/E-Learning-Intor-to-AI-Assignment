# EasyLearn - Full-Stack E-Learning Platform

A comprehensive full-stack e-learning platform with Node.js/Express backend, MySQL database, and modern frontend featuring complete user authentication, course management, and progress tracking.

## 🏁 Quick Start

1. **Clone and setup:**
   ```bash
   git clone https://github.com/Hlomohangcue/E-Learning-Intor-to-AI-Assignment.git
   cd E-Learning-Intor-to-AI-Assignment
   npm install
   ```

2. **Database setup:**
   ```bash
   # Copy environment template
   cp .env.example .env
   # Edit .env with your MySQL credentials
   # Run: mysql -u root -p e_learning < database_schema.sql
   ```

3. **Run the application:**
   ```bash
   # Start backend server
   node server.js
   
   # Start frontend (in another terminal)
   python -m http.server 8000
   ```

4. **Access:** http://localhost:8000

## 🚀 Features

### ✅ Full-Stack Implementation
- **Backend API**: Complete Node.js/Express server with RESTful APIs
- **Database Integration**: MySQL database with comprehensive schema
- **Authentication**: JWT-based authentication with bcrypt password hashing
- **Course Management**: Dynamic course loading from database
- **Progress Tracking**: Real-time course completion tracking
- **Quiz System**: Interactive quizzes with scoring and database storage
- **Survey System**: User feedback collection with database persistence
- **Security**: Input validation, rate limiting, CORS protection

### ✅ Core Requirements Met
- **Course List**: Display of 5 different courses with details from database
- **Course Details**: Detailed view with lessons and course information
- **Course Completion**: Mark courses as completed with database persistence
- **Clean UI**: Modern, responsive design with hover effects
- **User Authentication**: Secure login/register system with JWT tokens

### 🚀 Enhanced Features Added
- **User Authentication**: Login and registration system
- **Interactive Lessons**: Click on any lesson to view detailed content
- **Rich Course Content**: Each lesson includes explanations, code examples, and exercises
- **Lesson Navigation**: Navigate between lessons with previous/next buttons
- **Protected Content**: Course content accessible only to logged-in users
- **Quiz System**: Interactive 10-question multiple-choice quizzes for each course
- **Survey & Feedback**: Post-completion surveys to gather user feedback
- **Score Tracking**: Real-time quiz scoring with detailed explanations
- **Answer Review**: Review correct and incorrect answers after quiz completion
- **Progress Tracking**: Visual progress tracking and statistics
- **Local Storage**: User data and course completion state persists across sessions
- **Responsive Design**: Works perfectly on desktop, tablet, and mobile
- **Smooth Animations**: Transitions, modals, and completion feedback
- **Personalized Profile**: Shows user-specific learning statistics

## Courses Available

1. **Introduction to Web Development** (Beginner, 4 weeks)
2. **Python Programming Essentials** (Intermediate, 6 weeks)
3. **Data Science with AI** (Advanced, 8 weeks)
4. **Mobile App Development** (Intermediate, 10 weeks)
5. **Digital Marketing Fundamentals** (Beginner, 5 weeks)

## How to Use

### Getting Started
1. **Open `index.html`** in your web browser
2. **Create Account**: Click "Sign Up" to register a new user account
3. **Login**: Use your credentials to log in

### Learning Journey
4. **Explore Courses**: Browse the 5 available courses
5. **Enroll in Course**: Click on any course card to view details (login required)
6. **Study Lessons**: Click on individual lessons to access detailed content
7. **Navigate Content**: Use Previous/Next buttons to move between lessons
8. **Take Quiz**: Complete the 10-question multiple-choice quiz for each course
9. **Review Answers**: See correct answers and detailed explanations
10. **Provide Feedback**: Optional survey after quiz completion
11. **Track Progress**: Monitor completion status and quiz scores
12. **View Profile**: Check your learning statistics and achievements

### Sample User for Testing
- Email: `demo@easylearn.com`
- Password: `demo123`
(Or create your own account)

## Technical Implementation

### Structure
- `index.html` - Main HTML structure with sections
- `styles.css` - Modern CSS with grid layouts and animations
- `script.js` - JavaScript functionality and course data

### Key Features
- **Responsive Grid Layout** for course cards
- **CSS Transitions** and hover effects
- **Local Storage** for data persistence
- **Dynamic Content** rendering with JavaScript
- **Single Page Application** behavior with section switching

### Data Storage
Course completion status is stored in the browser's localStorage, so your progress persists between sessions.

## Enhanced Course Content

### 📚 Available Courses with Full Content

1. **Introduction to Web Development** (Beginner)
   - HTML Basics and Structure
   - CSS Styling and Layout  
   - JavaScript Fundamentals
   - Building Your First Website
   - Responsive Design Principles
   - Web Development Best Practices

2. **Python Programming Essentials** (Intermediate)
   - Python Syntax and Variables
   - Control Flow and Functions
   - Data Structures and Algorithms
   - Object-Oriented Programming
   - File Handling and Modules
   - Building Python Applications

3. **Data Science with AI** (Advanced)
   - Introduction to Data Science
   - Data Analysis with Pandas
   - Data Visualization
   - Machine Learning Basics
   - Deep Learning Fundamentals
   - AI Project Implementation

4. **Mobile App Development** (Intermediate)
   - Mobile Development Overview
   - React Native Basics
   - UI/UX Design for Mobile
   - Navigation and State Management
   - API Integration
   - Publishing Your App

5. **Digital Marketing Fundamentals** (Beginner)
   - Digital Marketing Overview
   - Search Engine Optimization (SEO)
   - Social Media Marketing
   - Email Marketing Campaigns
   - Pay-Per-Click Advertising
   - Analytics and Performance Tracking

Each course includes:
- 📖 Detailed explanations and overviews
- 💻 Code examples and snippets
- 🎯 Practical exercises
- 📱 Interactive content viewer
- 🧠 10-question multiple-choice quiz
- ✅ Answer explanations and scoring
- 📝 Optional feedback survey

## VibeCoding Assignment Compliance

This project exceeds all requirements:
- ✅ Mini e-learning platform with authentication
- ✅ List of courses (5 comprehensive courses)
- ✅ Course detail view with interactive lessons
- ✅ Mark courses and lessons as completed
- ✅ Clean, modern design with smooth animations
- ✅ Hover effects on buttons and cards
- ✅ HTML, CSS, and JavaScript implementation
- ✅ Rich course data with structured content
- 🚀 **Bonus**: User login/registration system
- 🚀 **Bonus**: Detailed lesson content with examples
- 🚀 **Bonus**: Interactive lesson navigation
- 🚀 **Bonus**: Protected content for authenticated users
- 🚀 **Bonus**: Comprehensive quiz system with 10 questions per course
- 🚀 **Bonus**: Answer explanations and score tracking
- 🚀 **Bonus**: Feedback collection surveys
- 🚀 **Bonus**: Quiz completion requirement (60% minimum to pass)

## Testing Features

To reset all course completions for testing:
1. Open browser developer console (F12)
2. Type: `resetAllCourses()`
3. Press Enter

## Browser Compatibility

Works in all modern browsers:
- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## Quiz & Assessment System

### 🎯 Complete Quiz Implementation
- **10 Questions Per Course**: Each course has a comprehensive 10-question multiple-choice quiz
- **Passing Grade**: 60% minimum score required to complete course
- **Interactive Interface**: Clean, responsive quiz interface with progress tracking
- **Answer Review**: Detailed explanations for all answers (correct and incorrect)
- **Retry Option**: Failed quizzes can be retaken until passing
- **Score Display**: Percentage and performance feedback

### 📊 Survey & Feedback System
- **Post-Quiz Survey**: Optional feedback collection after quiz completion
- **Rating System**: 1-5 star rating for course quality
- **Open Feedback**: Text fields for likes, improvements, and recommendations
- **Data Storage**: Feedback stored in localStorage for analysis

## Future Enhancements

Potential improvements for a full production system:
- Course content and video integration
- Certificate generation upon completion
- Backend API integration
- Advanced analytics and reporting
- Social features and discussion forums
- Adaptive learning paths

---

**Built with ❤️ for learning**  
*VibeCoding Assignment - Week 1*
