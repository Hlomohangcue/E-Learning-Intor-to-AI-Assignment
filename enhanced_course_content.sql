-- Comprehensive Course Enhancement - Add Professional Notes and References
-- This script enhances existing lessons with detailed professional content
-- Without changing current functionality

USE easylearn_db;

-- Update Course 1: Introduction to Web Development - Add Professional Notes
-- Update HTML Basics lesson with comprehensive professional content
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Understand HTML5 semantic structure and best practices</li>
<li>Master HTML elements for accessible web development</li>
<li>Learn industry-standard HTML coding conventions</li>
<li>Implement SEO-friendly HTML markup</li>
</ul>
</div>

<h3>What is HTML? - Professional Overview</h3>
<p>HTML (HyperText Markup Language) is the standard markup language for creating web pages. It describes the structure of a web page using markup tags. HTML5, the current standard, introduces semantic elements that improve accessibility and SEO performance.</p>

<div class="professional-insight">
<h4>📚 Industry Standards & References</h4>
<ul>
<li><strong>W3C HTML5 Specification:</strong> Official HTML standard maintained by the World Wide Web Consortium</li>
<li><strong>MDN Web Docs:</strong> Comprehensive HTML documentation by Mozilla</li>
<li><strong>Web Content Accessibility Guidelines (WCAG):</strong> International accessibility standards</li>
<li><strong>HTML Living Standard:</strong> WHATWG continuously updated specification</li>
</ul>
</div>

<h3>Professional HTML5 Document Structure</h3>
<div class="code-example">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Professional web development tutorial">
    <meta name="keywords" content="HTML5, web development, semantic markup">
    <meta name="author" content="EasyLearn">
    <title>Professional HTML5 Structure | EasyLearn</title>
    
    <!-- SEO and Social Media Meta Tags -->
    <meta property="og:title" content="Professional HTML5 Structure">
    <meta property="og:description" content="Learn industry-standard HTML5 practices">
    <meta property="og:type" content="article">
    
    <!-- Favicon and Icons -->
    <link rel="icon" type="image/x-icon" href="/favicon.ico">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
</head>
<body>
    <!-- Semantic HTML5 Structure -->
    <header role="banner">
        <nav role="navigation" aria-label="Main Navigation">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>
    
    <main role="main">
        <article>
            <header>
                <h1>Welcome to Professional Web Development</h1>
                <p class="lead">Industry-standard HTML5 practices</p>
            </header>
            
            <section>
                <h2>Content Section</h2>
                <p>Professional content with proper semantic markup.</p>
            </section>
        </article>
        
        <aside role="complementary">
            <h2>Related Information</h2>
            <p>Supplementary content and resources.</p>
        </aside>
    </main>
    
    <footer role="contentinfo">
        <p>&copy; 2025 Professional Web Development. All rights reserved.</p>
    </footer>
</body>
</html>
</div>

<div class="professional-insight">
<h4>🏭 Industry Best Practices</h4>
<ul>
<li><strong>Semantic HTML5:</strong> Use elements like &lt;article&gt;, &lt;section&gt;, &lt;nav&gt;, &lt;header&gt;, &lt;footer&gt; for better structure</li>
<li><strong>Accessibility (a11y):</strong> Include ARIA roles, alt attributes, and proper heading hierarchy</li>
<li><strong>SEO Optimization:</strong> Meta descriptions, structured data, and proper title tags</li>
<li><strong>Performance:</strong> Minimize DOM depth, optimize images, and use efficient markup</li>
</ul>
</div>

<h3>Essential HTML5 Elements - Professional Reference</h3>
<div class="reference-table">
<table>
<tr><th>Element</th><th>Purpose</th><th>Professional Use Case</th></tr>
<tr><td>&lt;header&gt;</td><td>Page/section header</td><td>Site branding, navigation, page titles</td></tr>
<tr><td>&lt;nav&gt;</td><td>Navigation links</td><td>Main menu, breadcrumbs, pagination</td></tr>
<tr><td>&lt;main&gt;</td><td>Main content area</td><td>Primary page content (one per page)</td></tr>
<tr><td>&lt;article&gt;</td><td>Standalone content</td><td>Blog posts, news articles, products</td></tr>
<tr><td>&lt;section&gt;</td><td>Thematic grouping</td><td>Content sections, chapters</td></tr>
<tr><td>&lt;aside&gt;</td><td>Sidebar content</td><td>Related links, advertisements, widgets</td></tr>
<tr><td>&lt;footer&gt;</td><td>Page/section footer</td><td>Copyright, contact info, legal links</td></tr>
</table>
</div>

<h3>Advanced HTML5 Features</h3>
<div class="code-example">
<!-- Form Elements with Validation -->
<form action="/submit" method="post" novalidate>
    <fieldset>
        <legend>Professional Contact Form</legend>
        
        <label for="name">Name (required):</label>
        <input type="text" id="name" name="name" required 
               aria-describedby="name-error" autocomplete="name">
        <span id="name-error" class="error" role="alert"></span>
        
        <label for="email">Email (required):</label>
        <input type="email" id="email" name="email" required 
               aria-describedby="email-error" autocomplete="email">
        <span id="email-error" class="error" role="alert"></span>
        
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" 
                  placeholder="Your message here..."></textarea>
    </fieldset>
    
    <button type="submit" class="btn-primary">Send Message</button>
</form>

<!-- Multimedia Elements -->
<figure>
    <img src="professional-image.jpg" 
         alt="Professional web development workspace showing code editor and design tools"
         loading="lazy"
         width="800" 
         height="400">
    <figcaption>Modern web development environment</figcaption>
</figure>

<!-- Video Element with Accessibility -->
<video controls preload="metadata" poster="video-poster.jpg">
    <source src="tutorial.mp4" type="video/mp4">
    <source src="tutorial.webm" type="video/webm">
    <track kind="captions" src="captions.vtt" srclang="en" label="English">
    <p>Your browser doesn''t support video. <a href="tutorial.mp4">Download the video</a>.</p>
</video>
</div>

<div class="professional-tips">
<h4>💡 Professional Development Tips</h4>
<ol>
<li><strong>Code Validation:</strong> Use W3C HTML Validator to ensure standards compliance</li>
<li><strong>Browser Testing:</strong> Test across different browsers and devices</li>
<li><strong>Performance Monitoring:</strong> Use tools like Lighthouse for optimization</li>
<li><strong>Accessibility Testing:</strong> Use screen readers and accessibility checkers</li>
<li><strong>Version Control:</strong> Use Git for tracking changes and collaboration</li>
</ol>
</div>

<div class="industry-resources">
<h4>📖 Professional Resources & Documentation</h4>
<ul>
<li><a href="https://developer.mozilla.org/en-US/docs/Web/HTML" target="_blank">MDN HTML Documentation</a></li>
<li><a href="https://www.w3.org/TR/html52/" target="_blank">W3C HTML5.2 Specification</a></li>
<li><a href="https://html.spec.whatwg.org/" target="_blank">HTML Living Standard</a></li>
<li><a href="https://www.w3.org/WAI/WCAG21/quickref/" target="_blank">WCAG Guidelines</a></li>
<li><a href="https://validator.w3.org/" target="_blank">W3C Markup Validator</a></li>
</ul>
</div>

<div class="exercise">
<h4>🎯 Professional Practice Exercise</h4>
<p><strong>Project:</strong> Create a professional portfolio landing page using semantic HTML5</p>
<ul>
<li>Implement proper document structure with all semantic elements</li>
<li>Include meta tags for SEO and social media</li>
<li>Add a contact form with proper validation attributes</li>
<li>Ensure WCAG 2.1 AA accessibility compliance</li>
<li>Validate your code using W3C validators</li>
<li>Test with screen readers and accessibility tools</li>
</ul>
<p><strong>Deliverables:</strong> HTML file, validation report, accessibility audit</p>
</div>

<div class="career-insights">
<h4>🚀 Career Application</h4>
<p><strong>Industry Relevance:</strong> HTML5 semantic markup is fundamental for:</p>
<ul>
<li><strong>Frontend Developer:</strong> Building accessible, SEO-friendly websites</li>
<li><strong>Full-Stack Developer:</strong> Creating maintainable web applications</li>
<li><strong>Web Designer:</strong> Understanding technical implementation of designs</li>
<li><strong>Digital Marketing:</strong> Optimizing content for search engines</li>
<li><strong>UX/UI Designer:</strong> Ensuring designs translate to accessible code</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'HTML Basics and Structure';

-- Update CSS Styling lesson with professional content
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master CSS3 specifications and modern layout techniques</li>
<li>Implement responsive design using CSS Grid and Flexbox</li>
<li>Apply CSS methodology (BEM, OOCSS, SMACSS)</li>
<li>Optimize CSS performance and maintainability</li>
</ul>
</div>

<h3>CSS3 Professional Overview</h3>
<p>CSS (Cascading Style Sheets) controls the presentation of HTML elements. CSS3 introduces powerful features like Grid, Flexbox, animations, and advanced selectors that enable modern web design patterns.</p>

<div class="professional-insight">
<h4>📚 Industry Standards & Methodologies</h4>
<ul>
<li><strong>BEM (Block Element Modifier):</strong> Scalable CSS naming convention</li>
<li><strong>OOCSS (Object-Oriented CSS):</strong> Modular and reusable CSS approach</li>
<li><strong>SMACSS (Scalable and Modular Architecture):</strong> CSS organization methodology</li>
<li><strong>CSS-in-JS:</strong> Modern component-based styling approach</li>
</ul>
</div>

<h3>Professional CSS Architecture</h3>
<div class="code-example">
/* Professional CSS Organization Structure */

/* 1. Variables and Custom Properties */
:root {
  /* Brand Colors */
  --primary-color: #007bff;
  --secondary-color: #6c757d;
  --success-color: #28a745;
  --danger-color: #dc3545;
  
  /* Typography Scale */
  --font-family-primary: "Inter", -apple-system, BlinkMacSystemFont, sans-serif;
  --font-size-xs: 0.75rem;
  --font-size-sm: 0.875rem;
  --font-size-base: 1rem;
  --font-size-lg: 1.125rem;
  --font-size-xl: 1.25rem;
  
  /* Spacing Scale */
  --spacing-xs: 0.25rem;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 1.5rem;
  --spacing-xl: 3rem;
  
  /* Breakpoints */
  --breakpoint-sm: 576px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 992px;
  --breakpoint-xl: 1200px;
}

/* 2. Reset and Base Styles */
*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  font-family: var(--font-family-primary);
  font-size: var(--font-size-base);
  line-height: 1.6;
  color: #333;
  margin: 0;
  padding: 0;
}

/* 3. Typography System */
.heading-1 { font-size: 2.5rem; font-weight: 700; line-height: 1.2; }
.heading-2 { font-size: 2rem; font-weight: 600; line-height: 1.3; }
.heading-3 { font-size: 1.5rem; font-weight: 600; line-height: 1.4; }

.text-sm { font-size: var(--font-size-sm); }
.text-lg { font-size: var(--font-size-lg); }

/* 4. Layout System - CSS Grid */
.grid {
  display: grid;
  gap: var(--spacing-md);
}

.grid--2-cols { grid-template-columns: repeat(2, 1fr); }
.grid--3-cols { grid-template-columns: repeat(3, 1fr); }
.grid--4-cols { grid-template-columns: repeat(4, 1fr); }

/* Responsive Grid */
.grid--responsive {
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
}

/* 5. Flexbox Utilities */
.flex { display: flex; }
.flex--column { flex-direction: column; }
.flex--center { justify-content: center; align-items: center; }
.flex--between { justify-content: space-between; }
.flex--wrap { flex-wrap: wrap; }
</div>

<div class="professional-insight">
<h4>🏗️ CSS Architecture Patterns</h4>
<ul>
<li><strong>Atomic Design:</strong> Breaking UI into atoms, molecules, organisms</li>
<li><strong>Component-Based:</strong> Self-contained, reusable style modules</li>
<li><strong>Utility-First:</strong> Small, single-purpose classes (like Tailwind CSS)</li>
<li><strong>CSS Modules:</strong> Locally scoped CSS for component isolation</li>
</ul>
</div>

<h3>Advanced Layout Techniques</h3>
<div class="code-example">
/* Modern CSS Grid Layout */
.site-layout {
  display: grid;
  grid-template-areas:
    "header header header"
    "sidebar main aside"
    "footer footer footer";
  grid-template-rows: auto 1fr auto;
  grid-template-columns: 250px 1fr 300px;
  min-height: 100vh;
  gap: var(--spacing-md);
}

.site-header { grid-area: header; }
.site-sidebar { grid-area: sidebar; }
.site-main { grid-area: main; }
.site-aside { grid-area: aside; }
.site-footer { grid-area: footer; }

/* Responsive Adjustments */
@media (max-width: 768px) {
  .site-layout {
    grid-template-areas:
      "header"
      "main"
      "sidebar"
      "aside"
      "footer";
    grid-template-columns: 1fr;
  }
}

/* Advanced Flexbox Card Layout */
.card-container {
  display: flex;
  flex-wrap: wrap;
  gap: var(--spacing-lg);
  justify-content: center;
}

.card {
  flex: 1 1 300px; /* grow, shrink, basis */
  max-width: 400px;
  background: white;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}
</div>

<h3>CSS Performance & Optimization</h3>
<div class="code-example">
/* Critical CSS Optimization */
/* Inline critical above-the-fold styles */

/* Use efficient selectors */
.btn { /* Class selector - efficient */ }
#header { /* ID selector - most efficient */ }
div.content { /* Avoid - less efficient */ }

/* Minimize repaints and reflows */
.optimized-animation {
  /* Use transform and opacity for smooth animations */
  transform: translateX(0);
  opacity: 1;
  transition: transform 0.3s ease, opacity 0.3s ease;
  /* Avoid animating layout properties like width, height, top, left */
}

/* Use CSS containment for performance */
.isolated-component {
  contain: layout style paint;
}

/* Optimize font loading */
@font-face {
  font-family: "CustomFont";
  src: url("font.woff2") format("woff2");
  font-display: swap; /* Improve loading performance */
}
</div>

<div class="professional-tips">
<h4>💡 CSS Professional Best Practices</h4>
<ol>
<li><strong>Mobile-First Design:</strong> Start with mobile styles, progressively enhance</li>
<li><strong>CSS Preprocessors:</strong> Use Sass, Less, or Stylus for advanced features</li>
<li><strong>PostCSS:</strong> Automate CSS processing and optimization</li>
<li><strong>CSS Linting:</strong> Use stylelint for consistent code quality</li>
<li><strong>Critical CSS:</strong> Inline above-the-fold styles for performance</li>
<li><strong>CSS-in-JS:</strong> Consider for component-based applications</li>
</ol>
</div>

<div class="industry-resources">
<h4>📖 Professional CSS Resources</h4>
<ul>
<li><a href="https://developer.mozilla.org/en-US/docs/Web/CSS" target="_blank">MDN CSS Documentation</a></li>
<li><a href="https://www.w3.org/Style/CSS/" target="_blank">W3C CSS Specifications</a></li>
<li><a href="https://css-tricks.com/" target="_blank">CSS-Tricks - Advanced Tutorials</a></li>
<li><a href="https://caniuse.com/" target="_blank">Can I Use - Browser Support</a></li>
<li><a href="https://csslayout.io/" target="_blank">CSS Layout Patterns</a></li>
</ul>
</div>

<div class="exercise">
<h4>🎯 Professional Practice Exercise</h4>
<p><strong>Project:</strong> Build a responsive dashboard layout using CSS Grid and Flexbox</p>
<ul>
<li>Create a mobile-first responsive design</li>
<li>Implement CSS custom properties for theming</li>
<li>Use BEM naming convention</li>
<li>Optimize for performance (minimize reflows/repaints)</li>
<li>Include dark/light theme support</li>
<li>Ensure accessibility compliance</li>
</ul>
</div>

<div class="career-insights">
<h4>🚀 Industry Applications</h4>
<ul>
<li><strong>Frontend Developer:</strong> Advanced CSS frameworks and methodologies</li>
<li><strong>UI/UX Designer:</strong> Understanding technical CSS capabilities</li>
<li><strong>Full-Stack Developer:</strong> Efficient styling for web applications</li>
<li><strong>Performance Engineer:</strong> CSS optimization techniques</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'CSS Styling and Layout';

-- Continue with JavaScript lesson enhancement
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master ES6+ features and modern JavaScript patterns</li>
<li>Understand asynchronous programming and event handling</li>
<li>Implement professional JavaScript architecture patterns</li>
<li>Apply testing and debugging best practices</li>
</ul>
</div>

<h3>Modern JavaScript (ES6+) Professional Overview</h3>
<p>JavaScript is a dynamic programming language that powers interactive web experiences. Modern JavaScript (ES2015+) introduces powerful features like modules, classes, async/await, and destructuring that enable scalable application development.</p>

<div class="professional-insight">
<h4>📚 JavaScript Standards & Ecosystem</h4>
<ul>
<li><strong>ECMAScript (ES):</strong> Official JavaScript specification (ES2015, ES2020, ES2023)</li>
<li><strong>TC39 Process:</strong> JavaScript feature proposal and standardization</li>
<li><strong>Babel:</strong> JavaScript compiler for using next-generation JavaScript</li>
<li><strong>TypeScript:</strong> Typed superset of JavaScript for large applications</li>
</ul>
</div>

<h3>Modern JavaScript Fundamentals</h3>
<div class="code-example">
// ES6+ Variable Declarations and Scoping
const API_URL = "https://api.example.com"; // Immutable constant
let userCount = 0; // Block-scoped variable
// Avoid var - function-scoped and hoisted

// Destructuring Assignment
const user = { name: "Alice", age: 30, email: "alice@example.com" };
const { name, email } = user; // Object destructuring
const [first, second, ...rest] = [1, 2, 3, 4, 5]; // Array destructuring

// Template Literals and String Interpolation
const greeting = `Hello, ${name}! You have ${userCount} notifications.`;
const multilineHTML = `
  <div class="card">
    <h3>${name}</h3>
    <p>Email: ${email}</p>
  </div>
`;

// Arrow Functions and Lexical This
const users = [
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 35 }
];

// Traditional function vs Arrow function
const getAdultUsers = users => users.filter(user => user.age >= 18);
const getUserNames = users => users.map(user => user.name);

// Rest and Spread Operators
function processUsers(primaryUser, ...otherUsers) {
  console.log(`Primary: ${primaryUser.name}`);
  console.log(`Others: ${otherUsers.length}`);
}

const newUser = { name: "David", age: 28 };
const updatedUsers = [...users, newUser]; // Spread in arrays
const userWithDefaults = { age: 0, isActive: true, ...newUser }; // Spread in objects
</div>

<div class="professional-insight">
<h4>🏗️ JavaScript Design Patterns</h4>
<ul>
<li><strong>Module Pattern:</strong> Encapsulating code in reusable modules</li>
<li><strong>Observer Pattern:</strong> Event-driven programming</li>
<li><strong>Factory Pattern:</strong> Creating objects without specifying exact classes</li>
<li><strong>Singleton Pattern:</strong> Ensuring only one instance of a class</li>
</ul>
</div>

<h3>Asynchronous JavaScript & APIs</h3>
<div class="code-example">
// Promises and Async/Await
class APIService {
  constructor(baseURL) {
    this.baseURL = baseURL;
  }

  // Modern fetch with error handling
  async request(endpoint, options = {}) {
    const url = `${this.baseURL}${endpoint}`;
    const config = {
      headers: {
        "Content-Type": "application/json",
        ...options.headers
      },
      ...options
    };

    try {
      const response = await fetch(url, config);
      
      if (!response.ok) {
        throw new Error(`HTTP ${response.status}: ${response.statusText}`);
      }
      
      return await response.json();
    } catch (error) {
      console.error("API Request failed:", error);
      throw error;
    }
  }

  // Specific API methods
  async getUsers() {
    return this.request("/users");
  }

  async createUser(userData) {
    return this.request("/users", {
      method: "POST",
      body: JSON.stringify(userData)
    });
  }

  async updateUser(id, userData) {
    return this.request(`/users/${id}`, {
      method: "PUT",
      body: JSON.stringify(userData)
    });
  }
}

// Usage with error handling
const api = new APIService("https://jsonplaceholder.typicode.com");

async function loadUserData() {
  try {
    const users = await api.getUsers();
    renderUsers(users);
  } catch (error) {
    showErrorMessage("Failed to load users. Please try again.");
  }
}

// Promise.all for concurrent requests
async function loadDashboardData() {
  try {
    const [users, posts, comments] = await Promise.all([
      api.getUsers(),
      api.request("/posts"),
      api.request("/comments")
    ]);
    
    renderDashboard({ users, posts, comments });
  } catch (error) {
    handleDashboardError(error);
  }
}
</div>

<h3>DOM Manipulation & Event Handling</h3>
<div class="code-example">
// Modern DOM Selection and Manipulation
class UserInterface {
  constructor() {
    this.userList = document.querySelector("#user-list");
    this.searchInput = document.querySelector("#search-input");
    this.addUserForm = document.querySelector("#add-user-form");
    
    this.initializeEventListeners();
  }

  initializeEventListeners() {
    // Event delegation for dynamic content
    this.userList.addEventListener("click", this.handleUserAction.bind(this));
    
    // Debounced search input
    this.searchInput.addEventListener("input", this.debounce(this.handleSearch.bind(this), 300));
    
    // Form submission
    this.addUserForm.addEventListener("submit", this.handleAddUser.bind(this));
  }

  handleUserAction(event) {
    const button = event.target.closest(".btn");
    if (!button) return;

    const userId = button.dataset.userId;
    const action = button.dataset.action;

    switch (action) {
      case "edit":
        this.editUser(userId);
        break;
      case "delete":
        this.deleteUser(userId);
        break;
    }
  }

  renderUsers(users) {
    // Use template literals for HTML generation
    const html = users.map(user => `
      <div class="user-card" data-user-id="${user.id}">
        <h3>${this.escapeHtml(user.name)}</h3>
        <p>${this.escapeHtml(user.email)}</p>
        <button class="btn btn-primary" data-action="edit" data-user-id="${user.id}">
          Edit
        </button>
        <button class="btn btn-danger" data-action="delete" data-user-id="${user.id}">
          Delete
        </button>
      </div>
    `).join("");

    this.userList.innerHTML = html;
  }

  // Utility functions
  escapeHtml(text) {
    const div = document.createElement("div");
    div.textContent = text;
    return div.innerHTML;
  }

  debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
      const later = () => {
        clearTimeout(timeout);
        func(...args);
      };
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
    };
  }
}
</div>

<div class="professional-tips">
<h4>💡 JavaScript Best Practices</h4>
<ol>
<li><strong>Use Strict Mode:</strong> "use strict" for better error catching</li>
<li><strong>ESLint & Prettier:</strong> Automated code quality and formatting</li>
<li><strong>Testing:</strong> Unit tests with Jest, integration tests with Cypress</li>
<li><strong>Module Bundlers:</strong> Webpack, Vite, or Parcel for production builds</li>
<li><strong>Error Monitoring:</strong> Sentry or similar for production error tracking</li>
<li><strong>Performance:</strong> Lazy loading, code splitting, and optimization</li>
</ol>
</div>

<div class="industry-resources">
<h4>📖 Professional JavaScript Resources</h4>
<ul>
<li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank">MDN JavaScript Documentation</a></li>
<li><a href="https://tc39.es/" target="_blank">TC39 ECMAScript Proposals</a></li>
<li><a href="https://javascript.info/" target="_blank">The Modern JavaScript Tutorial</a></li>
<li><a href="https://github.com/airbnb/javascript" target="_blank">Airbnb JavaScript Style Guide</a></li>
<li><a href="https://jestjs.io/" target="_blank">Jest Testing Framework</a></li>
</ul>
</div>

<div class="exercise">
<h4>🎯 Professional Practice Exercise</h4>
<p><strong>Project:</strong> Build a Task Management Application</p>
<ul>
<li>Implement modern ES6+ features (classes, modules, async/await)</li>
<li>Create a RESTful API integration layer</li>
<li>Add local storage with error handling</li>
<li>Implement search and filtering functionality</li>
<li>Write unit tests for core functions</li>
<li>Use ESLint and Prettier for code quality</li>
</ul>
</div>

<div class="career-insights">
<h4>🚀 JavaScript Career Paths</h4>
<ul>
<li><strong>Frontend Developer:</strong> React, Vue, Angular frameworks</li>
<li><strong>Backend Developer:</strong> Node.js server-side development</li>
<li><strong>Full-Stack Developer:</strong> End-to-end JavaScript applications</li>
<li><strong>Mobile Developer:</strong> React Native, Ionic hybrid apps</li>
<li><strong>DevOps Engineer:</strong> JavaScript build tools and automation</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'JavaScript Fundamentals';

-- Update Building Your First Website lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Plan and architect a professional website project</li>
<li>Implement industry-standard development workflow</li>
<li>Deploy and optimize website performance</li>
<li>Apply SEO and accessibility best practices</li>
</ul>
</div>

<h3>Professional Website Development Process</h3>
<p>Building a professional website requires strategic planning, modern development practices, and attention to performance, accessibility, and SEO. This lesson covers the complete development lifecycle from concept to deployment.</p>

<div class="professional-insight">
<h4>🏗️ Professional Development Workflow</h4>
<ul>
<li><strong>Discovery & Planning:</strong> Requirements gathering, user research, technical architecture</li>
<li><strong>Design System:</strong> Creating consistent UI components and style guides</li>
<li><strong>Development:</strong> Modular coding, version control, testing</li>
<li><strong>Optimization:</strong> Performance tuning, SEO implementation</li>
<li><strong>Deployment:</strong> CI/CD pipelines, monitoring, maintenance</li>
</ul>
</div>

<h3>Project Architecture & File Structure</h3>
<div class="code-example">
professional-portfolio/
├── src/
│   ├── assets/
│   │   ├── images/
│   │   │   ├── hero-bg.webp
│   │   │   ├── profile.jpg
│   │   │   └── projects/
│   │   ├── icons/
│   │   │   ├── favicon.ico
│   │   │   ├── apple-touch-icon.png
│   │   │   └── manifest.json
│   │   └── fonts/
│   │       ├── inter-regular.woff2
│   │       └── inter-bold.woff2
│   ├── styles/
│   │   ├── reset.css
│   │   ├── variables.css
│   │   ├── typography.css
│   │   ├── components.css
│   │   ├── layout.css
│   │   └── main.css
│   ├── scripts/
│   │   ├── main.js
│   │   ├── components/
│   │   │   ├── navigation.js
│   │   │   ├── portfolio.js
│   │   │   └── contact.js
│   │   └── utils/
│   │       ├── api.js
│   │       └── helpers.js
│   └── data/
│       ├── projects.json
│       └── skills.json
├── dist/ (build output)
├── tests/
├── docs/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── package.json
├── webpack.config.js
├── .gitignore
└── README.md
</div>

<h3>Professional HTML Structure</h3>
<div class="code-example">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- SEO Meta Tags -->
    <title>John Doe - Senior Frontend Developer | Portfolio</title>
    <meta name="description" content="Experienced frontend developer specializing in React, JavaScript, and modern web technologies. View my portfolio and get in touch.">
    <meta name="keywords" content="frontend developer, React, JavaScript, portfolio, web development">
    <meta name="author" content="John Doe">
    
    <!-- Open Graph / Social Media -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="John Doe - Senior Frontend Developer">
    <meta property="og:description" content="Experienced frontend developer portfolio">
    <meta property="og:image" content="/assets/images/social-preview.jpg">
    <meta property="og:url" content="https://johndoe.dev">
    
    <!-- Twitter Card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:creator" content="@johndoe">
    
    <!-- Icons & Manifest -->
    <link rel="icon" type="image/x-icon" href="/assets/icons/favicon.ico">
    <link rel="apple-touch-icon" href="/assets/icons/apple-touch-icon.png">
    <link rel="manifest" href="/assets/icons/manifest.json">
    
    <!-- Preload Critical Resources -->
    <link rel="preload" href="/assets/fonts/inter-regular.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="/assets/images/hero-bg.webp" as="image">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="/styles/main.css">
    
    <!-- Structured Data for SEO -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Person",
      "name": "John Doe",
      "jobTitle": "Senior Frontend Developer",
      "url": "https://johndoe.dev",
      "sameAs": [
        "https://linkedin.com/in/johndoe",
        "https://github.com/johndoe"
      ]
    }
    </script>
</head>

<body>
    <!-- Skip Link for Accessibility -->
    <a href="#main" class="skip-link">Skip to main content</a>
    
    <!-- Header with Navigation -->
    <header class="site-header" role="banner">
        <nav class="main-nav" role="navigation" aria-label="Main Navigation">
            <div class="nav-brand">
                <a href="#home" class="brand-link">
                    <span class="sr-only">John Doe - Home</span>
                    <span class="brand-text" aria-hidden="true">JD</span>
                </a>
            </div>
            
            <ul class="nav-menu" role="menubar">
                <li role="none"><a href="#about" role="menuitem">About</a></li>
                <li role="none"><a href="#skills" role="menuitem">Skills</a></li>
                <li role="none"><a href="#projects" role="menuitem">Projects</a></li>
                <li role="none"><a href="#contact" role="menuitem">Contact</a></li>
            </ul>
            
            <button class="nav-toggle" aria-expanded="false" aria-controls="nav-menu">
                <span class="sr-only">Toggle navigation menu</span>
                <span class="hamburger"></span>
            </button>
        </nav>
    </header>

    <!-- Main Content -->
    <main id="main" role="main">
        <!-- Hero Section -->
        <section class="hero" aria-labelledby="hero-heading">
            <div class="hero-content">
                <h1 id="hero-heading" class="hero-title">
                    Senior Frontend Developer
                </h1>
                <p class="hero-subtitle">
                    Crafting exceptional user experiences with modern web technologies
                </p>
                <div class="hero-actions">
                    <a href="#projects" class="btn btn-primary">View Projects</a>
                    <a href="#contact" class="btn btn-outline">Get In Touch</a>
                </div>
            </div>
        </section>

        <!-- About Section -->
        <section class="about" aria-labelledby="about-heading">
            <div class="container">
                <h2 id="about-heading">About Me</h2>
                <div class="about-content">
                    <div class="about-text">
                        <p>With over 5 years of experience in frontend development...</p>
                    </div>
                    <div class="about-image">
                        <img src="/assets/images/profile.jpg" 
                             alt="John Doe professional headshot"
                             loading="lazy"
                             width="300" 
                             height="300">
                    </div>
                </div>
            </div>
        </section>

        <!-- Skills Section -->
        <section class="skills" aria-labelledby="skills-heading">
            <div class="container">
                <h2 id="skills-heading">Technical Skills</h2>
                <div class="skills-grid" role="list">
                    <!-- Skills populated dynamically -->
                </div>
            </div>
        </section>

        <!-- Projects Section -->
        <section class="projects" aria-labelledby="projects-heading">
            <div class="container">
                <h2 id="projects-heading">Featured Projects</h2>
                <div class="projects-grid" role="list">
                    <!-- Projects populated dynamically -->
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section class="contact" aria-labelledby="contact-heading">
            <div class="container">
                <h2 id="contact-heading">Get In Touch</h2>
                <form class="contact-form" novalidate>
                    <!-- Contact form fields -->
                </form>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="site-footer" role="contentinfo">
        <div class="container">
            <p>&copy; 2025 John Doe. All rights reserved.</p>
            <div class="social-links">
                <a href="https://github.com/johndoe" target="_blank" rel="noopener noreferrer">
                    <span class="sr-only">GitHub Profile</span>
                    <svg aria-hidden="true"><!-- GitHub icon --></svg>
                </a>
                <!-- More social links -->
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="/scripts/main.js" defer></script>
</body>
</html>
</div>

<div class="professional-tips">
<h4>💡 Professional Development Best Practices</h4>
<ol>
<li><strong>Performance First:</strong> Optimize images (WebP), lazy loading, critical CSS</li>
<li><strong>Accessibility:</strong> ARIA labels, semantic HTML, keyboard navigation</li>
<li><strong>SEO Optimization:</strong> Meta tags, structured data, sitemap</li>
<li><strong>Progressive Enhancement:</strong> Works without JavaScript, enhances with it</li>
<li><strong>Build Tools:</strong> Webpack, Vite, or Parcel for optimization</li>
<li><strong>Version Control:</strong> Git workflow with feature branches</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Professional Project Exercise</h4>
<p><strong>Build a Complete Portfolio Website</strong></p>
<ul>
<li>Implement responsive design with CSS Grid/Flexbox</li>
<li>Add smooth scrolling navigation</li>
<li>Create a contact form with validation</li>
<li>Optimize for Core Web Vitals (LCP, FID, CLS)</li>
<li>Achieve 95+ Lighthouse scores</li>
<li>Deploy to production with CI/CD</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'Building Your First Website';

-- Update Responsive Design lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master mobile-first responsive design principles</li>
<li>Implement advanced CSS media queries and container queries</li>
<li>Optimize responsive images and typography</li>
<li>Apply modern layout techniques for all screen sizes</li>
</ul>
</div>

<h3>Modern Responsive Design Strategy</h3>
<p>Responsive design ensures optimal user experience across all devices. Modern approaches include mobile-first design, flexible grids, responsive typography, and performance optimization for various network conditions.</p>

<div class="professional-insight">
<h4>📱 Device-First Design Approach</h4>
<ul>
<li><strong>Mobile-First:</strong> Start with mobile constraints, progressively enhance</li>
<li><strong>Content Strategy:</strong> Prioritize content hierarchy for small screens</li>
<li><strong>Performance Budget:</strong> Optimize for mobile network conditions</li>
<li><strong>Touch Interactions:</strong> Design for finger navigation</li>
</ul>
</div>

<h3>Advanced Responsive CSS Framework</h3>
<div class="code-example">
/* Professional Mobile-First CSS System */

/* 1. CSS Custom Properties for Responsive Values */
:root {
  /* Fluid Typography Scale */
  --font-size-xs: clamp(0.75rem, 0.7rem + 0.25vw, 0.875rem);
  --font-size-sm: clamp(0.875rem, 0.8rem + 0.375vw, 1rem);
  --font-size-base: clamp(1rem, 0.9rem + 0.5vw, 1.125rem);
  --font-size-lg: clamp(1.125rem, 1rem + 0.625vw, 1.25rem);
  --font-size-xl: clamp(1.25rem, 1.1rem + 0.75vw, 1.5rem);
  --font-size-2xl: clamp(1.5rem, 1.3rem + 1vw, 2rem);
  --font-size-3xl: clamp(2rem, 1.7rem + 1.5vw, 3rem);
  
  /* Fluid Spacing Scale */
  --space-xs: clamp(0.5rem, 0.4rem + 0.5vw, 0.75rem);
  --space-sm: clamp(0.75rem, 0.6rem + 0.75vw, 1rem);
  --space-md: clamp(1rem, 0.8rem + 1vw, 1.5rem);
  --space-lg: clamp(1.5rem, 1.2rem + 1.5vw, 2.5rem);
  --space-xl: clamp(2rem, 1.6rem + 2vw, 4rem);
  
  /* Responsive Breakpoints */
  --breakpoint-xs: 320px;
  --breakpoint-sm: 576px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 1024px;
  --breakpoint-xl: 1200px;
  --breakpoint-2xl: 1400px;
  
  /* Container Sizes */
  --container-xs: 100%;
  --container-sm: 540px;
  --container-md: 720px;
  --container-lg: 960px;
  --container-xl: 1140px;
  --container-2xl: 1320px;
}

/* 2. Responsive Container System */
.container {
  width: 100%;
  margin-left: auto;
  margin-right: auto;
  padding-left: var(--space-md);
  padding-right: var(--space-md);
  
  /* Fluid max-width */
  max-width: min(100% - 2rem, var(--container-xl));
}

@media (min-width: 576px) {
  .container { max-width: var(--container-sm); }
}

@media (min-width: 768px) {
  .container { max-width: var(--container-md); }
}

@media (min-width: 1024px) {
  .container { max-width: var(--container-lg); }
}

@media (min-width: 1200px) {
  .container { max-width: var(--container-xl); }
}

/* 3. Responsive Grid System */
.grid {
  display: grid;
  gap: var(--space-md);
}

/* Mobile-first grid columns */
.grid-1 { grid-template-columns: 1fr; }
.grid-2 { grid-template-columns: repeat(2, 1fr); }
.grid-3 { grid-template-columns: repeat(3, 1fr); }

/* Responsive grid modifiers */
@media (min-width: 768px) {
  .grid-md-2 { grid-template-columns: repeat(2, 1fr); }
  .grid-md-3 { grid-template-columns: repeat(3, 1fr); }
  .grid-md-4 { grid-template-columns: repeat(4, 1fr); }
}

@media (min-width: 1024px) {
  .grid-lg-3 { grid-template-columns: repeat(3, 1fr); }
  .grid-lg-4 { grid-template-columns: repeat(4, 1fr); }
  .grid-lg-6 { grid-template-columns: repeat(6, 1fr); }
}

/* Intelligent auto-responsive grid */
.grid-auto-fit {
  grid-template-columns: repeat(auto-fit, minmax(min(250px, 100%), 1fr));
}

.grid-auto-fill {
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
}

/* 4. Advanced Media Queries */
/* Feature-based media queries */
@media (hover: hover) {
  .hover-effect:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  }
}

@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}

@media (prefers-color-scheme: dark) {
  :root {
    --text-color: #e2e8f0;
    --bg-color: #1a202c;
  }
}

/* Container Queries (Modern CSS) */
@container (min-width: 400px) {
  .card {
    display: grid;
    grid-template-columns: auto 1fr;
    gap: 1rem;
  }
}

/* 5. Responsive Typography System */
.heading {
  line-height: 1.2;
  font-weight: 700;
  margin-bottom: var(--space-sm);
}

.heading-1 { font-size: var(--font-size-3xl); }
.heading-2 { font-size: var(--font-size-2xl); }
.heading-3 { font-size: var(--font-size-xl); }

.text {
  line-height: 1.6;
  margin-bottom: var(--space-md);
}

.text-sm { font-size: var(--font-size-sm); }
.text-lg { font-size: var(--font-size-lg); }
</div>

<h3>Responsive Images & Media</h3>
<div class="code-example">
/* Responsive Images System */

/* Base responsive image */
.responsive-img {
  max-width: 100%;
  height: auto;
  display: block;
}

/* Art Direction with picture element */
.hero-image {
  width: 100%;
  height: 50vh;
  object-fit: cover;
}

/* Aspect ratio containers */
.aspect-ratio {
  position: relative;
  overflow: hidden;
}

.aspect-ratio::before {
  content: "";
  display: block;
  padding-top: var(--aspect-ratio, 56.25%); /* 16:9 default */
}

.aspect-ratio > * {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* Utility classes for common ratios */
.aspect-square { --aspect-ratio: 100%; }
.aspect-video { --aspect-ratio: 56.25%; }
.aspect-4-3 { --aspect-ratio: 75%; }
.aspect-3-2 { --aspect-ratio: 66.67%; }
</div>

<div class="code-example">
<!-- Professional Responsive Image Implementation -->

<!-- Art Direction Example -->
<picture class="hero-image">
  <source media="(min-width: 1024px)" 
          srcset="hero-desktop-large.webp 1920w,
                  hero-desktop-medium.webp 1440w"
          sizes="100vw">
  <source media="(min-width: 768px)" 
          srcset="hero-tablet-large.webp 1024w,
                  hero-tablet-medium.webp 768w"
          sizes="100vw">
  <img src="hero-mobile.webp" 
       srcset="hero-mobile-large.webp 640w,
               hero-mobile-medium.webp 480w,
               hero-mobile-small.webp 320w"
       sizes="100vw"
       alt="Professional development workspace"
       loading="eager"
       fetchpriority="high">
</picture>

<!-- Responsive Content Images -->
<div class="content-image aspect-ratio aspect-video">
  <img src="project-screenshot.webp"
       srcset="project-screenshot-small.webp 400w,
               project-screenshot-medium.webp 800w,
               project-screenshot-large.webp 1200w"
       sizes="(max-width: 768px) 100vw,
              (max-width: 1024px) 50vw,
              33vw"
       alt="Project dashboard interface"
       loading="lazy">
</div>

<!-- Performance-optimized gallery -->
<div class="image-gallery">
  <img src="placeholder.svg"
       data-src="gallery-image-1.webp"
       data-srcset="gallery-image-1-small.webp 300w,
                    gallery-image-1-medium.webp 600w,
                    gallery-image-1-large.webp 900w"
       alt="Gallery image 1"
       loading="lazy"
       class="lazy-image">
</div>
</div>

<div class="professional-tips">
<h4>💡 Responsive Design Best Practices</h4>
<ol>
<li><strong>Content Strategy:</strong> Design content hierarchy for mobile first</li>
<li><strong>Touch Targets:</strong> Minimum 44px touch targets for mobile</li>
<li><strong>Performance:</strong> Optimize images, lazy loading, critical CSS</li>
<li><strong>Testing:</strong> Test on real devices, not just browser dev tools</li>
<li><strong>Progressive Enhancement:</strong> Core functionality works everywhere</li>
<li><strong>Accessibility:</strong> Ensure responsive design maintains accessibility</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Professional Responsive Project</h4>
<p><strong>Create a Responsive News Website</strong></p>
<ul>
<li>Implement mobile-first responsive design</li>
<li>Use CSS Grid for complex layouts</li>
<li>Optimize images with responsive techniques</li>
<li>Add dark/light theme support</li>
<li>Ensure accessibility across all breakpoints</li>
<li>Achieve perfect mobile performance scores</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'Responsive Design Principles';

-- Update Web Development Best Practices lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Implement industry-standard code quality practices</li>
<li>Master performance optimization techniques</li>
<li>Apply security best practices for web development</li>
<li>Establish professional development workflows</li>
</ul>
</div>

<h3>Professional Web Development Standards</h3>
<p>Professional web development requires adherence to industry standards, best practices for code quality, performance optimization, security measures, and maintainable architecture patterns.</p>

<div class="professional-insight">
<h4>🏭 Enterprise Development Standards</h4>
<ul>
<li><strong>Code Quality:</strong> ESLint, Prettier, SonarQube for consistent code</li>
<li><strong>Testing Strategy:</strong> Unit, integration, and E2E testing</li>
<li><strong>CI/CD Pipelines:</strong> Automated testing and deployment</li>
<li><strong>Documentation:</strong> Code comments, README, API documentation</li>
</ul>
</div>

<h3>Code Quality & Architecture</h3>
<div class="code-example">
// Professional JavaScript Architecture Example

// 1. Module Organization
// utils/constants.js
export const API_ENDPOINTS = {
  USERS: "/api/v1/users",
  POSTS: "/api/v1/posts",
  AUTH: "/api/v1/auth"
};

export const HTTP_STATUS = {
  OK: 200,
  CREATED: 201,
  BAD_REQUEST: 400,
  UNAUTHORIZED: 401,
  FORBIDDEN: 403,
  NOT_FOUND: 404,
  INTERNAL_SERVER_ERROR: 500
};

// services/api.js
class APIService {
  constructor(baseURL, options = {}) {
    this.baseURL = baseURL;
    this.defaultHeaders = {
      "Content-Type": "application/json",
      ...options.headers
    };
    this.timeout = options.timeout || 10000;
  }

  /**
   * Makes an HTTP request with error handling and logging
   * @param {string} endpoint - API endpoint
   * @param {object} options - Request options
   * @returns {Promise<object>} API response data
   * @throws {Error} Request or network errors
   */
  async request(endpoint, options = {}) {
    const url = `${this.baseURL}${endpoint}`;
    const config = {
      ...options,
      headers: {
        ...this.defaultHeaders,
        ...options.headers
      }
    };

    // Add authentication token if available
    const token = localStorage.getItem("authToken");
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    try {
      // Add timeout handling
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), this.timeout);
      config.signal = controller.signal;

      const response = await fetch(url, config);
      clearTimeout(timeoutId);

      // Comprehensive error handling
      if (!response.ok) {
        await this.handleAPIError(response);
      }

      return await response.json();
    } catch (error) {
      this.logError("API Request Failed", { url, error });
      throw error;
    }
  }

  async handleAPIError(response) {
    const errorData = await response.json().catch(() => ({}));
    const error = new Error(errorData.message || `HTTP ${response.status}`);
    error.status = response.status;
    error.data = errorData;
    throw error;
  }

  logError(message, context) {
    console.error(message, context);
    // In production, send to error monitoring service
    // errorService.captureException(error, context);
  }
}

// components/UserManager.js
class UserManager {
  constructor(apiService) {
    this.api = apiService;
    this.users = [];
    this.listeners = new Set();
  }

  // Observer pattern for state management
  subscribe(callback) {
    this.listeners.add(callback);
    return () => this.listeners.delete(callback);
  }

  notify(event, data) {
    this.listeners.forEach(callback => callback(event, data));
  }

  async loadUsers() {
    try {
      this.notify("loading", true);
      const users = await this.api.request(API_ENDPOINTS.USERS);
      this.users = users;
      this.notify("users:loaded", users);
    } catch (error) {
      this.notify("error", error);
    } finally {
      this.notify("loading", false);
    }
  }

  // Input validation and sanitization
  validateUserInput(userData) {
    const errors = {};

    if (!userData.name || userData.name.trim().length < 2) {
      errors.name = "Name must be at least 2 characters";
    }

    if (!userData.email || !this.isValidEmail(userData.email)) {
      errors.email = "Valid email is required";
    }

    return {
      isValid: Object.keys(errors).length === 0,
      errors
    };
  }

  isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
  }

  // XSS protection
  sanitizeHTML(html) {
    const div = document.createElement("div");
    div.textContent = html;
    return div.innerHTML;
  }
}
</div>

<h3>Performance Optimization Strategies</h3>
<div class="code-example">
/* Performance-First CSS */

/* 1. Critical CSS Inlining */
/* Inline above-the-fold styles in <head> */
.critical-styles {
  /* Header, hero section, and visible content styles */
  font-family: system-ui, -apple-system, sans-serif;
  line-height: 1.6;
  color: #333;
}

/* 2. Efficient CSS Selectors */
/* Avoid deep nesting and overly specific selectors */
.btn { /* Good: Single class */ }
.btn--primary { /* Good: BEM modifier */ }
nav ul li a { /* Avoid: Deep nesting */ }

/* 3. CSS Containment for Performance */
.component {
  contain: layout style paint;
  /* Isolates component rendering */
}

/* 4. Optimize Web Fonts */
@font-face {
  font-family: "CustomFont";
  src: url("font.woff2") format("woff2");
  font-display: swap; /* Improve loading UX */
  unicode-range: U+0000-00FF; /* Subset for specific characters */
}

/* 5. Hardware Acceleration */
.smooth-animation {
  transform: translateZ(0); /* Create new layer */
  will-change: transform; /* Hint to browser */
  backface-visibility: hidden;
}

/* 6. Reduce Paint and Layout Thrashing */
.optimized-hover {
  /* Animate transform and opacity only */
  transition: transform 0.2s ease, opacity 0.2s ease;
}

.optimized-hover:hover {
  transform: translateY(-2px) scale(1.02);
  opacity: 0.9;
}
</div>

<h3>Security Best Practices</h3>
<div class="code-example">
// Security Implementation

class SecurityUtilities {
  // Content Security Policy (CSP) helper
  static setupCSP() {
    const meta = document.createElement("meta");
    meta.httpEquiv = "Content-Security-Policy";
    meta.content = `
      default-src ''self'';
      script-src ''self'' ''unsafe-inline'' https://trusted-cdn.com;
      style-src ''self'' ''unsafe-inline'';
      img-src ''self'' data: https:;
      connect-src ''self'' https://api.yourdomain.com;
      font-src ''self'' https://fonts.googleapis.com;
    `.replace(/\s+/g, " ").trim();
    document.head.appendChild(meta);
  }

  // XSS Protection
  static escapeHTML(unsafe) {
    return unsafe
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&#039;");
  }

  // Input Sanitization
  static sanitizeInput(input, options = {}) {
    if (typeof input !== "string") return "";

    let sanitized = input.trim();

    // Remove potentially dangerous patterns
    if (options.removeScripts !== false) {
      sanitized = sanitized.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, "");
    }

    if (options.removeHTML !== false) {
      sanitized = this.escapeHTML(sanitized);
    }

    return sanitized;
  }

  // CSRF Protection
  static generateCSRFToken() {
    return crypto.getRandomValues(new Uint8Array(32))
      .reduce((str, byte) => str + byte.toString(16).padStart(2, "0"), "");
  }

  // Secure Local Storage
  static secureStore(key, value) {
    try {
      const encrypted = btoa(JSON.stringify(value)); // Basic encoding
      localStorage.setItem(key, encrypted);
    } catch (error) {
      console.error("Storage failed:", error);
    }
  }

  static secureRetrieve(key) {
    try {
      const encrypted = localStorage.getItem(key);
      return encrypted ? JSON.parse(atob(encrypted)) : null;
    } catch (error) {
      console.error("Retrieval failed:", error);
      return null;
    }
  }
}

// Secure Form Handling
class SecureForm {
  constructor(formElement) {
    this.form = formElement;
    this.csrfToken = SecurityUtilities.generateCSRFToken();
    this.setupSecurity();
  }

  setupSecurity() {
    // Add CSRF token
    const csrfInput = document.createElement("input");
    csrfInput.type = "hidden";
    csrfInput.name = "csrf_token";
    csrfInput.value = this.csrfToken;
    this.form.appendChild(csrfInput);

    // Input validation on blur
    this.form.addEventListener("blur", this.validateInput.bind(this), true);
  }

  validateInput(event) {
    const input = event.target;
    if (input.tagName !== "INPUT" && input.tagName !== "TEXTAREA") return;

    const value = SecurityUtilities.sanitizeInput(input.value);
    if (value !== input.value) {
      input.value = value;
      this.showSecurityWarning(input);
    }
  }

  showSecurityWarning(input) {
    const warning = document.createElement("div");
    warning.className = "security-warning";
    warning.textContent = "Input has been sanitized for security";
    input.parentNode.appendChild(warning);
    setTimeout(() => warning.remove(), 3000);
  }
}
</div>

<div class="professional-tips">
<h4>💡 Professional Development Workflow</h4>
<ol>
<li><strong>Version Control:</strong> Git flow, conventional commits, code reviews</li>
<li><strong>Testing Strategy:</strong> TDD, unit tests, integration tests, E2E tests</li>
<li><strong>CI/CD Pipeline:</strong> Automated testing, building, and deployment</li>
<li><strong>Code Quality:</strong> ESLint, Prettier, Husky pre-commit hooks</li>
<li><strong>Documentation:</strong> JSDoc, README, architecture decisions</li>
<li><strong>Monitoring:</strong> Error tracking, performance monitoring, analytics</li>
</ol>
</div>

<div class="industry-resources">
<h4>📖 Professional Standards & Tools</h4>
<ul>
<li><a href="https://web.dev/" target="_blank">Web.dev - Google Web Standards</a></li>
<li><a href="https://developer.mozilla.org/en-US/docs/Web/Security" target="_blank">MDN Web Security Guide</a></li>
<li><a href="https://owasp.org/www-project-top-ten/" target="_blank">OWASP Top 10 Security Risks</a></li>
<li><a href="https://lighthouse-dot-webdotdevsite.appspot.com/" target="_blank">Lighthouse Performance Audits</a></li>
<li><a href="https://eslint.org/" target="_blank">ESLint Code Quality</a></li>
</ul>
</div>

<div class="exercise">
<h4>🎯 Professional Standards Exercise</h4>
<p><strong>Build a Production-Ready Web Application</strong></p>
<ul>
<li>Implement comprehensive error handling and logging</li>
<li>Add security measures (CSP, XSS protection, input validation)</li>
<li>Set up automated testing (Jest, Cypress)</li>
<li>Create CI/CD pipeline with GitHub Actions</li>
<li>Achieve 95+ Lighthouse scores in all categories</li>
<li>Document code and architecture decisions</li>
</ul>
</div>'
WHERE course_id = 1 AND title = 'Web Development Best Practices';

-- ========================================
-- PYTHON PROGRAMMING COURSE ENHANCEMENTS
-- ========================================

-- Update Python Control Flow and Logic lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master advanced Python control structures and logic patterns</li>
<li>Implement efficient algorithms with proper flow control</li>
<li>Apply functional programming concepts in Python</li>
<li>Write clean, maintainable conditional and iterative code</li>
</ul>
</div>

<h3>Professional Python Control Flow</h3>
<p>Mastering control flow in Python involves understanding not just basic conditionals and loops, but also advanced patterns like list comprehensions, generator expressions, context managers, and functional programming constructs that make Python code more Pythonic and efficient.</p>

<div class="professional-insight">
<h4>🐍 Pythonic Programming Principles</h4>
<ul>
<li><strong>Readability:</strong> "Code is read more often than it is written" - Guido van Rossum</li>
<li><strong>Explicit is Better:</strong> Clear, explicit code over clever implicit solutions</li>
<li><strong>Simple is Better:</strong> Prefer simple solutions over complex ones</li>
<li><strong>DRY Principle:</strong> Don''t Repeat Yourself - use functions and classes</li>
</ul>
</div>

<h3>Advanced Conditional Logic</h3>
<div class="code-example">
# Professional Conditional Patterns in Python

# 1. Ternary Operators and Conditional Expressions
def calculate_grade(score):
    """Calculate letter grade with professional validation."""
    if not isinstance(score, (int, float)):
        raise TypeError("Score must be a number")
    
    if not 0 <= score <= 100:
        raise ValueError("Score must be between 0 and 100")
    
    # Professional ternary usage
    return (
        "A" if score >= 90 else
        "B" if score >= 80 else
        "C" if score >= 70 else
        "D" if score >= 60 else
        "F"
    )

# 2. Match-Case Statements (Python 3.10+)
def process_api_response(status_code):
    """Handle API responses with match-case pattern."""
    match status_code:
        case 200:
            return {"status": "success", "action": "process_data"}
        case 201:
            return {"status": "created", "action": "confirm_creation"}
        case 400 | 422:  # Multiple patterns
            return {"status": "client_error", "action": "validate_input"}
        case 401 | 403:
            return {"status": "auth_error", "action": "refresh_token"}
        case 404:
            return {"status": "not_found", "action": "handle_missing"}
        case code if 500 <= code < 600:  # Guard conditions
            return {"status": "server_error", "action": "retry_with_backoff"}
        case _:  # Default case
            return {"status": "unknown", "action": "log_and_investigate"}

# 3. Advanced Guard Clauses
def process_user_data(user_data):
    """Process user data with professional guard clauses."""
    # Early returns for validation
    if not user_data:
        raise ValueError("User data cannot be empty")
    
    if not isinstance(user_data, dict):
        raise TypeError("User data must be a dictionary")
    
    required_fields = ["email", "name", "age"]
    missing_fields = [field for field in required_fields if field not in user_data]
    if missing_fields:
        raise ValueError(f"Missing required fields: {missing_fields}")
    
    # Email validation with regex
    import re
    email_pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
    if not re.match(email_pattern, user_data["email"]):
        raise ValueError("Invalid email format")
    
    # Age validation
    age = user_data["age"]
    if not isinstance(age, int) or not 0 <= age <= 150:
        raise ValueError("Age must be a valid integer between 0 and 150")
    
    return {
        "email": user_data["email"].lower().strip(),
        "name": user_data["name"].strip().title(),
        "age": age,
        "status": "adult" if age >= 18 else "minor"
    }
</div>

<h3>Professional Iteration Patterns</h3>
<div class="code-example">
# Advanced Looping and Iteration Techniques

from itertools import chain, combinations, cycle, islice
from collections import defaultdict, Counter
import asyncio
from typing import Iterator, List, Dict, Any

# 1. List Comprehensions vs Generator Expressions
def analyze_sales_data(sales_records: List[Dict]) -> Dict[str, Any]:
    """Analyze sales data using comprehensions and generators."""
    
    # List comprehension for finite collections
    high_value_sales = [
        sale for sale in sales_records 
        if sale.get("amount", 0) > 10000
    ]
    
    # Generator expression for memory efficiency
    total_revenue = sum(
        sale.get("amount", 0) 
        for sale in sales_records
    )
    
    # Dictionary comprehension for data transformation
    sales_by_region = {
        region: sum(sale["amount"] for sale in sales_records if sale.get("region") == region)
        for region in {sale.get("region") for sale in sales_records if sale.get("region")}
    }
    
    # Set comprehension for unique values
    unique_products = {
        sale.get("product") 
        for sale in sales_records 
        if sale.get("product")
    }
    
    return {
        "high_value_count": len(high_value_sales),
        "total_revenue": total_revenue,
        "sales_by_region": sales_by_region,
        "unique_products": unique_products
    }

# 2. Advanced Iteration with enumerate, zip, and itertools
def process_multiple_datasets(datasets: List[List[Any]]) -> Dict[str, Any]:
    """Demonstrate advanced iteration patterns."""
    
    results = {}
    
    # Enumerate with custom start
    for idx, dataset in enumerate(datasets, 1):
        results[f"dataset_{idx}"] = {
            "size": len(dataset),
            "type": type(dataset[0]).__name__ if dataset else "empty"
        }
    
    # Zip for parallel iteration
    if len(datasets) >= 2:
        paired_data = list(zip(datasets[0], datasets[1]))
        results["paired_count"] = len(paired_data)
    
    # Zip longest for unequal length sequences
    from itertools import zip_longest
    all_items = list(zip_longest(*datasets, fillvalue=None))
    results["max_length"] = len(all_items)
    
    # Chain for flattening
    flattened = list(chain.from_iterable(datasets))
    results["total_items"] = len(flattened)
    
    return results

# 3. Custom Iterators and Generators
class DataProcessor:
    """Professional data processing with custom iterators."""
    
    def __init__(self, data: List[Any]):
        self.data = data
    
    def __iter__(self):
        return self.batch_iterator(batch_size=100)
    
    def batch_iterator(self, batch_size: int = 100) -> Iterator[List[Any]]:
        """Generate data in batches for memory efficiency."""
        for i in range(0, len(self.data), batch_size):
            yield self.data[i:i + batch_size]
    
    def filtered_iterator(self, condition) -> Iterator[Any]:
        """Generate filtered data based on condition."""
        for item in self.data:
            if condition(item):
                yield item
    
    def transformed_iterator(self, transform_func) -> Iterator[Any]:
        """Apply transformation during iteration."""
        for item in self.data:
            try:
                yield transform_func(item)
            except Exception as e:
                # Log error but continue processing
                print(f"Error processing item {item}: {e}")
                continue

# 4. Async Iteration for Concurrent Processing
class AsyncDataProcessor:
    """Professional async data processing."""
    
    def __init__(self, data_sources: List[str]):
        self.data_sources = data_sources
    
    async def __aiter__(self):
        for source in self.data_sources:
            async for item in self.fetch_data_async(source):
                yield item
    
    async def fetch_data_async(self, source: str) -> Iterator[Any]:
        """Simulate async data fetching."""
        # Simulate network delay
        await asyncio.sleep(0.1)
        
        # Yield processed data
        for i in range(10):
            yield f"data_{source}_{i}"
    
    async def process_concurrent(self) -> List[Any]:
        """Process multiple sources concurrently."""
        tasks = [
            self.fetch_data_async(source) 
            for source in self.data_sources
        ]
        
        results = []
        for task in asyncio.as_completed(tasks):
            async for item in await task:
                results.append(item)
        
        return results
</div>

<h3>Exception Handling and Control Flow</h3>
<div class="code-example">
# Professional Exception Handling Patterns

import logging
from typing import Optional, Union, Callable, Any
from functools import wraps
from contextlib import contextmanager

# 1. Custom Exception Hierarchy
class APIError(Exception):
    """Base class for API-related errors."""
    def __init__(self, message: str, status_code: Optional[int] = None):
        super().__init__(message)
        self.status_code = status_code

class AuthenticationError(APIError):
    """Raised when authentication fails."""
    def __init__(self, message: str = "Authentication failed"):
        super().__init__(message, 401)

class ValidationError(APIError):
    """Raised when data validation fails."""
    def __init__(self, message: str, field: Optional[str] = None):
        super().__init__(message, 400)
        self.field = field

# 2. Decorator for Exception Handling
def handle_exceptions(
    default_return=None,
    log_errors=True,
    reraise=False
):
    """Professional exception handling decorator."""
    def decorator(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
            try:
                return func(*args, **kwargs)
            except Exception as e:
                if log_errors:
                    logging.error(
                        f"Error in {func.__name__}: {str(e)}",
                        exc_info=True
                    )
                
                if reraise:
                    raise
                
                return default_return
        return wrapper
    return decorator

# 3. Context Managers for Resource Management
@contextmanager
def database_transaction():
    """Professional database transaction management."""
    connection = None
    try:
        connection = get_database_connection()
        connection.begin()
        yield connection
        connection.commit()
    except Exception as e:
        if connection:
            connection.rollback()
        logging.error(f"Transaction failed: {e}")
        raise
    finally:
        if connection:
            connection.close()

# 4. Retry Logic with Exponential Backoff
def retry_with_backoff(
    max_attempts: int = 3,
    base_delay: float = 1.0,
    exponential_base: float = 2.0,
    max_delay: float = 60.0
):
    """Retry decorator with exponential backoff."""
    def decorator(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
            last_exception = None
            
            for attempt in range(max_attempts):
                try:
                    return func(*args, **kwargs)
                except Exception as e:
                    last_exception = e
                    
                    if attempt == max_attempts - 1:
                        break
                    
                    # Calculate delay with exponential backoff
                    delay = min(
                        base_delay * (exponential_base ** attempt),
                        max_delay
                    )
                    
                    logging.warning(
                        f"Attempt {attempt + 1} failed for {func.__name__}: {e}. "
                        f"Retrying in {delay:.2f} seconds..."
                    )
                    
                    import time
                    time.sleep(delay)
            
            # All attempts failed
            raise last_exception
        return wrapper
    return decorator

# Usage example
@handle_exceptions(default_return={})
@retry_with_backoff(max_attempts=3)
def fetch_user_data(user_id: int) -> Dict[str, Any]:
    """Fetch user data with professional error handling."""
    if not isinstance(user_id, int) or user_id <= 0:
        raise ValidationError(f"Invalid user_id: {user_id}")
    
    # Simulate API call that might fail
    import random
    if random.random() < 0.3:  # 30% chance of failure
        raise APIError("Service temporarily unavailable", 503)
    
    return {"user_id": user_id, "name": f"User {user_id}"}
</div>

<div class="professional-tips">
<h4>💡 Python Control Flow Best Practices</h4>
<ol>
<li><strong>Pythonic Patterns:</strong> Use list comprehensions, generator expressions appropriately</li>
<li><strong>Early Returns:</strong> Use guard clauses to reduce nesting</li>
<li><strong>Exception Hierarchy:</strong> Create custom exceptions for better error handling</li>
<li><strong>Context Managers:</strong> Use for resource management and cleanup</li>
<li><strong>Async/Await:</strong> Leverage async programming for I/O-bound operations</li>
<li><strong>Type Hints:</strong> Add type annotations for better code documentation</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Professional Control Flow Project</h4>
<p><strong>Build a Data Processing Pipeline</strong></p>
<ul>
<li>Implement async data fetching with error handling</li>
<li>Create custom iterators for batch processing</li>
<li>Add retry logic with exponential backoff</li>
<li>Use context managers for resource management</li>
<li>Apply functional programming patterns</li>
<li>Include comprehensive unit tests</li>
</ul>
</div>'
WHERE course_id = 2 AND title = 'Control Flow and Logic';

-- Update Python Data Structures lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master Python''s built-in data structures and their time complexities</li>
<li>Implement custom data structures for specific use cases</li>
<li>Apply advanced data manipulation techniques</li>
<li>Optimize data structure usage for performance</li>
</ul>
</div>

<h3>Professional Python Data Structures</h3>
<p>Understanding data structures deeply involves knowing not just their syntax, but their time and space complexity, appropriate use cases, and how to extend them for professional applications. This includes built-in types, collections module, and custom implementations.</p>

<div class="professional-insight">
<h4>📊 Data Structure Selection Criteria</h4>
<ul>
<li><strong>Time Complexity:</strong> Big O notation for operations (insert, delete, search)</li>
<li><strong>Space Complexity:</strong> Memory usage and overhead</li>
<li><strong>Use Case Fit:</strong> Matching data structure to problem requirements</li>
<li><strong>Thread Safety:</strong> Concurrent access considerations</li>
</ul>
</div>

<h3>Advanced List Operations and Patterns</h3>
<div class="code-example">
# Professional List Usage and Optimization

from typing import List, Any, Optional, Callable, TypeVar, Generic
from collections import deque
import bisect
import heapq

T = TypeVar("T")

class AdvancedListOperations:
    """Professional list manipulation techniques."""
    
    @staticmethod
    def binary_search_insert(sorted_list: List[int], item: int) -> int:
        """Insert item in sorted list maintaining order."""
        position = bisect.bisect_left(sorted_list, item)
        sorted_list.insert(position, item)
        return position
    
    @staticmethod
    def chunk_list(data: List[T], chunk_size: int) -> List[List[T]]:
        """Split list into chunks of specified size."""
        return [
            data[i:i + chunk_size] 
            for i in range(0, len(data), chunk_size)
        ]
    
    @staticmethod
    def merge_sorted_lists(*lists: List[List[int]]) -> List[int]:
        """Merge multiple sorted lists efficiently."""
        # Use heap for efficient merging
        heap = []
        result = []
        
        # Initialize heap with first element from each list
        for i, lst in enumerate(lists):
            if lst:
                heapq.heappush(heap, (lst[0], i, 0))
        
        while heap:
            val, list_idx, elem_idx = heapq.heappop(heap)
            result.append(val)
            
            # Add next element from the same list
            if elem_idx + 1 < len(lists[list_idx]):
                next_val = lists[list_idx][elem_idx + 1]
                heapq.heappush(heap, (next_val, list_idx, elem_idx + 1))
        
        return result
    
    @staticmethod
    def remove_duplicates_preserve_order(items: List[T]) -> List[T]:
        """Remove duplicates while preserving original order."""
        seen = set()
        result = []
        for item in items:
            if item not in seen:
                seen.add(item)
                result.append(item)
        return result
    
    @staticmethod
    def rotate_list(items: List[T], positions: int) -> List[T]:
        """Rotate list by n positions (positive = right, negative = left)."""
        if not items:
            return items
        
        length = len(items)
        positions = positions % length  # Handle positions > length
        
        return items[-positions:] + items[:-positions]

# Professional use of deque for performance
class CircularBuffer(Generic[T]):
    """Professional circular buffer implementation."""
    
    def __init__(self, max_size: int):
        self.max_size = max_size
        self.buffer = deque(maxlen=max_size)
    
    def add(self, item: T) -> None:
        """Add item to buffer (overwrites oldest if full)."""
        self.buffer.append(item)
    
    def get_all(self) -> List[T]:
        """Get all items as list (oldest to newest)."""
        return list(self.buffer)
    
    def get_latest(self, n: int) -> List[T]:
        """Get n most recent items."""
        return list(self.buffer)[-n:] if n <= len(self.buffer) else list(self.buffer)
    
    def is_full(self) -> bool:
        """Check if buffer is at maximum capacity."""
        return len(self.buffer) == self.max_size
    
    def clear(self) -> None:
        """Remove all items from buffer."""
        self.buffer.clear()
</div>

<h3>Advanced Dictionary Patterns</h3>
<div class="code-example">
# Professional Dictionary Usage and Extensions

from collections import defaultdict, Counter, ChainMap, OrderedDict
from typing import Dict, Any, DefaultDict, Optional, Union
import json
from functools import lru_cache

class AdvancedDictOperations:
    """Professional dictionary manipulation and patterns."""
    
    @staticmethod
    def deep_merge(*dicts: Dict[Any, Any]) -> Dict[Any, Any]:
        """Deep merge multiple dictionaries."""
        result = {}
        
        for dictionary in dicts:
            for key, value in dictionary.items():
                if (
                    key in result 
                    and isinstance(result[key], dict) 
                    and isinstance(value, dict)
                ):
                    result[key] = AdvancedDictOperations.deep_merge(result[key], value)
                else:
                    result[key] = value
        
        return result
    
    @staticmethod
    def flatten_dict(d: Dict[Any, Any], parent_key: str = "", sep: str = ".") -> Dict[str, Any]:
        """Flatten nested dictionary with dotted keys."""
        items = []
        for k, v in d.items():
            new_key = f"{parent_key}{sep}{k}" if parent_key else k
            if isinstance(v, dict):
                items.extend(
                    AdvancedDictOperations.flatten_dict(v, new_key, sep).items()
                )
            else:
                items.append((new_key, v))
        return dict(items)
    
    @staticmethod
    def unflatten_dict(d: Dict[str, Any], sep: str = ".") -> Dict[Any, Any]:
        """Unflatten dictionary with dotted keys."""
        result = {}
        for key, value in d.items():
            keys = key.split(sep)
            current = result
            
            for k in keys[:-1]:
                current = current.setdefault(k, {})
            
            current[keys[-1]] = value
        
        return result

class ConfigManager:
    """Professional configuration management with nested access."""
    
    def __init__(self, config_dict: Optional[Dict[str, Any]] = None):
        self._config = config_dict or {}
        self._flattened = self._flatten_config()
    
    def _flatten_config(self) -> Dict[str, Any]:
        """Flatten configuration for easy access."""
        return AdvancedDictOperations.flatten_dict(self._config)
    
    def get(self, key: str, default: Any = None) -> Any:
        """Get configuration value with dot notation."""
        return self._flattened.get(key, default)
    
    def set(self, key: str, value: Any) -> None:
        """Set configuration value with dot notation."""
        self._flattened[key] = value
        # Rebuild nested structure
        self._config = AdvancedDictOperations.unflatten_dict(self._flattened)
    
    def update(self, updates: Dict[str, Any]) -> None:
        """Update multiple configuration values."""
        self._config = AdvancedDictOperations.deep_merge(self._config, updates)
        self._flattened = self._flatten_config()
    
    def to_dict(self) -> Dict[str, Any]:
        """Export configuration as dictionary."""
        return self._config.copy()

# Professional data aggregation patterns
class DataAggregator:
    """Advanced data aggregation using collections."""
    
    def __init__(self):
        self.data: DefaultDict[str, List[float]] = defaultdict(list)
        self.counters: DefaultDict[str, Counter] = defaultdict(Counter)
    
    def add_metric(self, category: str, value: float) -> None:
        """Add a metric value to a category."""
        self.data[category].append(value)
    
    def add_count(self, category: str, item: str) -> None:
        """Add count for an item in a category."""
        self.counters[category][item] += 1
    
    def get_statistics(self, category: str) -> Dict[str, float]:
        """Get statistical summary for a category."""
        values = self.data[category]
        if not values:
            return {}
        
        sorted_values = sorted(values)
        n = len(sorted_values)
        
        return {
            "count": n,
            "sum": sum(values),
            "mean": sum(values) / n,
            "median": (
                sorted_values[n // 2] if n % 2 
                else (sorted_values[n // 2 - 1] + sorted_values[n // 2]) / 2
            ),
            "min": min(values),
            "max": max(values),
            "std_dev": (
                sum((x - sum(values) / n) ** 2 for x in values) / n
            ) ** 0.5
        }
    
    def get_top_items(self, category: str, n: int = 10) -> List[tuple]:
        """Get top n most common items in a category."""
        return self.counters[category].most_common(n)
    
    def export_summary(self) -> Dict[str, Any]:
        """Export complete summary of all data."""
        return {
            "metrics": {
                category: self.get_statistics(category)
                for category in self.data
            },
            "counts": {
                category: dict(counter)
                for category, counter in self.counters.items()
            }
        }
</div>

<h3>Advanced Set Operations and Applications</h3>
<div class="code-example">
# Professional Set Usage and Custom Implementations

from typing import Set, FrozenSet, Iterator, Any
from collections.abc import MutableSet

class AdvancedSetOperations:
    """Professional set operations and algorithms."""
    
    @staticmethod
    def find_common_elements(*collections: Any) -> Set[Any]:
        """Find elements common to all collections."""
        if not collections:
            return set()
        
        result = set(collections[0])
        for collection in collections[1:]:
            result &= set(collection)
        return result
    
    @staticmethod
    def find_unique_to_each(*collections: Any) -> Dict[int, Set[Any]]:
        """Find elements unique to each collection."""
        all_sets = [set(collection) for collection in collections]
        union_all = set().union(*all_sets)
        
        result = {}
        for i, s in enumerate(all_sets):
            others_union = set().union(*(all_sets[:i] + all_sets[i+1:]))
            result[i] = s - others_union
        
        return result
    
    @staticmethod
    def jaccard_similarity(set1: Set[Any], set2: Set[Any]) -> float:
        """Calculate Jaccard similarity between two sets."""
        intersection = len(set1 & set2)
        union = len(set1 | set2)
        return intersection / union if union > 0 else 0.0
    
    @staticmethod
    def power_set(items: Set[Any]) -> Iterator[FrozenSet[Any]]:
        """Generate all subsets of a set (power set)."""
        from itertools import combinations
        
        items_list = list(items)
        for r in range(len(items_list) + 1):
            for combo in combinations(items_list, r):
                yield frozenset(combo)

class DisjointSet:
    """Professional Union-Find (Disjoint Set) data structure."""
    
    def __init__(self, items: Iterator[Any]):
        self.parent = {item: item for item in items}
        self.rank = {item: 0 for item in items}
        self.components = len(self.parent)
    
    def find(self, item: Any) -> Any:
        """Find root of item''s set with path compression."""
        if self.parent[item] != item:
            self.parent[item] = self.find(self.parent[item])  # Path compression
        return self.parent[item]
    
    def union(self, item1: Any, item2: Any) -> bool:
        """Union two sets by rank."""
        root1 = self.find(item1)
        root2 = self.find(item2)
        
        if root1 == root2:
            return False  # Already in same set
        
        # Union by rank
        if self.rank[root1] < self.rank[root2]:
            self.parent[root1] = root2
        elif self.rank[root1] > self.rank[root2]:
            self.parent[root2] = root1
        else:
            self.parent[root2] = root1
            self.rank[root1] += 1
        
        self.components -= 1
        return True
    
    def connected(self, item1: Any, item2: Any) -> bool:
        """Check if two items are in the same set."""
        return self.find(item1) == self.find(item2)
    
    def get_components(self) -> Dict[Any, Set[Any]]:
        """Get all connected components."""
        components = defaultdict(set)
        for item in self.parent:
            root = self.find(item)
            components[root].add(item)
        return dict(components)

class BloomFilter:
    """Professional Bloom Filter implementation for membership testing."""
    
    def __init__(self, size: int = 10000, hash_count: int = 5):
        self.size = size
        self.hash_count = hash_count
        self.bit_array = [False] * size
        self.item_count = 0
    
    def _hash(self, item: Any, seed: int) -> int:
        """Generate hash for item with given seed."""
        return hash((str(item), seed)) % self.size
    
    def add(self, item: Any) -> None:
        """Add item to bloom filter."""
        for i in range(self.hash_count):
            index = self._hash(item, i)
            self.bit_array[index] = True
        self.item_count += 1
    
    def might_contain(self, item: Any) -> bool:
        """Check if item might be in the set (false positives possible)."""
        return all(
            self.bit_array[self._hash(item, i)]
            for i in range(self.hash_count)
        )
    
    def estimated_false_positive_rate(self) -> float:
        """Estimate current false positive rate."""
        bits_set = sum(self.bit_array)
        if bits_set == 0:
            return 0.0
        
        # Approximation formula
        return (bits_set / self.size) ** self.hash_count
</div>

<div class="professional-tips">
<h4>💡 Data Structure Best Practices</h4>
<ol>
<li><strong>Choose Wisely:</strong> Match data structure to access patterns and performance needs</li>
<li><strong>Time Complexity:</strong> Understand Big O for all operations you use</li>
<li><strong>Memory Efficiency:</strong> Consider space overhead, especially for large datasets</li>
<li><strong>Immutability:</strong> Use immutable structures when appropriate for thread safety</li>
<li><strong>Custom Implementations:</strong> Build specialized structures for specific use cases</li>
<li><strong>Benchmarking:</strong> Profile and measure performance with real data</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Advanced Data Structures Project</h4>
<p><strong>Build a Data Analysis Library</strong></p>
<ul>
<li>Implement custom data structures (Trie, Graph, Priority Queue)</li>
<li>Create efficient algorithms for data processing</li>
<li>Add performance benchmarking and profiling</li>
<li>Include memory optimization techniques</li>
<li>Build comprehensive test suite</li>
<li>Document time and space complexity for all operations</li>
</ul>
</div>'
WHERE course_id = 2 AND title = 'Data Structures and Algorithms';

-- Update Object-Oriented Programming lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master advanced OOP concepts including metaclasses and descriptors</li>
<li>Implement SOLID principles in Python applications</li>
<li>Apply design patterns for scalable software architecture</li>
<li>Create robust class hierarchies with proper inheritance</li>
</ul>
</div>

<h3>Professional Object-Oriented Design</h3>
<p>Professional OOP in Python goes beyond basic classes and inheritance. It involves understanding design principles, patterns, metaclasses, descriptors, and how to create maintainable, extensible object-oriented systems that follow industry best practices.</p>

<div class="professional-insight">
<h4>🏗️ SOLID Principles in Python</h4>
<ul>
<li><strong>Single Responsibility:</strong> Each class should have one reason to change</li>
<li><strong>Open/Closed:</strong> Open for extension, closed for modification</li>
<li><strong>Liskov Substitution:</strong> Subclasses must be substitutable for base classes</li>
<li><strong>Interface Segregation:</strong> Clients shouldn''t depend on unused interfaces</li>
<li><strong>Dependency Inversion:</strong> Depend on abstractions, not concretions</li>
</ul>
</div>

<h3>Advanced Class Design and Metaclasses</h3>
<div class="code-example">
# Professional Class Design with Advanced Features

from abc import ABC, abstractmethod
from typing import Any, Dict, List, Optional, Protocol, TypeVar, Generic
from dataclasses import dataclass, field
from enum import Enum, auto
import logging
from functools import wraps
import weakref

# 1. Professional Abstract Base Classes
class DataProcessor(ABC):
    """Abstract base class for data processors."""
    
    def __init__(self, name: str):
        self.name = name
        self.logger = logging.getLogger(f"{self.__class__.__name__}.{name}")
    
    @abstractmethod
    def process(self, data: Any) -> Any:
        """Process data - must be implemented by subclasses."""
        pass
    
    @abstractmethod
    def validate_input(self, data: Any) -> bool:
        """Validate input data - must be implemented by subclasses."""
        pass
    
    def __call__(self, data: Any) -> Any:
        """Make processor callable."""
        if not self.validate_input(data):
            raise ValueError("Invalid input data")
        
        self.logger.info(f"Processing data with {self.name}")
        return self.process(data)

# 2. Professional Metaclass Usage
class SingletonMeta(type):
    """Metaclass for singleton pattern implementation."""
    _instances = {}
    _lock = threading.Lock()
    
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            with cls._lock:
                if cls not in cls._instances:
                    instance = super().__call__(*args, **kwargs)
                    cls._instances[cls] = instance
        return cls._instances[cls]

class ConfigManager(metaclass=SingletonMeta):
    """Singleton configuration manager."""
    
    def __init__(self):
        if hasattr(self, "_initialized"):
            return
        
        self._config = {}
        self._initialized = True
    
    def set(self, key: str, value: Any) -> None:
        self._config[key] = value
    
    def get(self, key: str, default: Any = None) -> Any:
        return self._config.get(key, default)

# 3. Advanced Descriptors
class ValidatedAttribute:
    """Professional descriptor with validation."""
    
    def __init__(self, validator=None, default=None):
        self.validator = validator
        self.default = default
        self.name = None
    
    def __set_name__(self, owner, name):
        self.name = name
        self.private_name = f"__{name}"
    
    def __get__(self, obj, objtype=None):
        if obj is None:
            return self
        return getattr(obj, self.private_name, self.default)
    
    def __set__(self, obj, value):
        if self.validator and not self.validator(value):
            raise ValueError(f"Invalid value for {self.name}: {value}")
        setattr(obj, self.private_name, value)

def positive_number(value):
    """Validator for positive numbers."""
    return isinstance(value, (int, float)) and value > 0

def non_empty_string(value):
    """Validator for non-empty strings."""
    return isinstance(value, str) and len(value.strip()) > 0

# 4. Professional Class with Descriptors
class Product:
    """Professional product class with validation."""
    
    name = ValidatedAttribute(non_empty_string)
    price = ValidatedAttribute(positive_number, 0.0)
    quantity = ValidatedAttribute(lambda x: isinstance(x, int) and x >= 0, 0)
    
    def __init__(self, name: str, price: float, quantity: int = 0):
        self.name = name
        self.price = price
        self.quantity = quantity
        self._id = id(self)
    
    @property
    def total_value(self) -> float:
        """Calculate total value of product."""
        return self.price * self.quantity
    
    def __repr__(self) -> str:
        return f"Product(name=''{self.name}'', price={self.price}, quantity={self.quantity})"
    
    def __eq__(self, other) -> bool:
        if not isinstance(other, Product):
            return NotImplemented
        return self.name == other.name and self.price == other.price

# 5. Context Manager Classes
class DatabaseTransaction:
    """Professional database transaction context manager."""
    
    def __init__(self, connection):
        self.connection = connection
        self.transaction = None
    
    def __enter__(self):
        self.transaction = self.connection.begin()
        return self.transaction
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        if exc_type is None:
            self.transaction.commit()
        else:
            self.transaction.rollback()
        return False  # Don''t suppress exceptions
</div>

<h3>Design Patterns Implementation</h3>
<div class="code-example">
# Professional Design Patterns in Python

from collections import defaultdict
import threading
from typing import Callable, Any, Dict, List
from enum import Enum
import copy

# 1. Observer Pattern
class Event:
    """Event system for observer pattern."""
    
    def __init__(self):
        self._observers: Dict[str, List[Callable]] = defaultdict(list)
        self._lock = threading.RLock()
    
    def subscribe(self, event_type: str, callback: Callable) -> None:
        """Subscribe to an event type."""
        with self._lock:
            self._observers[event_type].append(callback)
    
    def unsubscribe(self, event_type: str, callback: Callable) -> None:
        """Unsubscribe from an event type."""
        with self._lock:
            if callback in self._observers[event_type]:
                self._observers[event_type].remove(callback)
    
    def notify(self, event_type: str, *args, **kwargs) -> None:
        """Notify all observers of an event."""
        with self._lock:
            observers = self._observers[event_type].copy()
        
        for observer in observers:
            try:
                observer(*args, **kwargs)
            except Exception as e:
                logging.error(f"Error in observer {observer}: {e}")

# 2. Factory Pattern
class LogLevel(Enum):
    DEBUG = "debug"
    INFO = "info"
    WARNING = "warning"
    ERROR = "error"

class Logger(ABC):
    """Abstract logger interface."""
    
    @abstractmethod
    def log(self, message: str) -> None:
        pass

class FileLogger(Logger):
    def __init__(self, filename: str):
        self.filename = filename
    
    def log(self, message: str) -> None:
        with open(self.filename, "a") as f:
            f.write(f"{message}\n")

class DatabaseLogger(Logger):
    def __init__(self, connection):
        self.connection = connection
    
    def log(self, message: str) -> None:
        # Simulate database logging
        print(f"DB Log: {message}")

class LoggerFactory:
    """Factory for creating different types of loggers."""
    
    @staticmethod
    def create_logger(logger_type: str, **config) -> Logger:
        if logger_type == "file":
            return FileLogger(config.get("filename", "app.log"))
        elif logger_type == "database":
            return DatabaseLogger(config.get("connection"))
        else:
            raise ValueError(f"Unknown logger type: {logger_type}")

# 3. Strategy Pattern
class SortStrategy(ABC):
    """Abstract sorting strategy."""
    
    @abstractmethod
    def sort(self, data: List[Any]) -> List[Any]:
        pass

class QuickSort(SortStrategy):
    def sort(self, data: List[Any]) -> List[Any]:
        if len(data) <= 1:
            return data
        
        pivot = data[len(data) // 2]
        left = [x for x in data if x < pivot]
        middle = [x for x in data if x == pivot]
        right = [x for x in data if x > pivot]
        
        return self.sort(left) + middle + self.sort(right)

class MergeSort(SortStrategy):
    def sort(self, data: List[Any]) -> List[Any]:
        if len(data) <= 1:
            return data
        
        mid = len(data) // 2
        left = self.sort(data[:mid])
        right = self.sort(data[mid:])
        
        return self._merge(left, right)
    
    def _merge(self, left: List[Any], right: List[Any]) -> List[Any]:
        result = []
        i = j = 0
        
        while i < len(left) and j < len(right):
            if left[i] <= right[j]:
                result.append(left[i])
                i += 1
            else:
                result.append(right[j])
                j += 1
        
        result.extend(left[i:])
        result.extend(right[j:])
        return result

class Sorter:
    """Context class using strategy pattern."""
    
    def __init__(self, strategy: SortStrategy):
        self.strategy = strategy
    
    def set_strategy(self, strategy: SortStrategy) -> None:
        self.strategy = strategy
    
    def sort(self, data: List[Any]) -> List[Any]:
        return self.strategy.sort(data.copy())

# 4. Decorator Pattern with Classes
class Component(ABC):
    """Base component interface."""
    
    @abstractmethod
    def operation(self) -> str:
        pass

class ConcreteComponent(Component):
    """Concrete component implementation."""
    
    def operation(self) -> str:
        return "ConcreteComponent"

class BaseDecorator(Component):
    """Base decorator class."""
    
    def __init__(self, component: Component):
        self._component = component
    
    @property
    def component(self) -> Component:
        return self._component
    
    def operation(self) -> str:
        return self._component.operation()

class ConcreteDecoratorA(BaseDecorator):
    """Concrete decorator A."""
    
    def operation(self) -> str:
        return f"ConcreteDecoratorA({self.component.operation()})"

class ConcreteDecoratorB(BaseDecorator):
    """Concrete decorator B."""
    
    def operation(self) -> str:
        return f"ConcreteDecoratorB({self.component.operation()})"
</div>

<h3>Advanced Inheritance and Composition</h3>
<div class="code-example">
# Professional Inheritance and Composition Patterns

from typing import Union, Protocol, runtime_checkable
from dataclasses import dataclass
from abc import ABC, abstractmethod

# 1. Composition over Inheritance
@runtime_checkable
class Drawable(Protocol):
    """Protocol for drawable objects."""
    def draw(self) -> str: ...

@runtime_checkable
class Movable(Protocol):
    """Protocol for movable objects."""
    def move(self, x: float, y: float) -> None: ...

@dataclass
class Point:
    """Simple point class."""
    x: float = 0.0
    y: float = 0.0
    
    def move(self, dx: float, dy: float) -> None:
        self.x += dx
        self.y += dy
    
    def distance_to(self, other: "Point") -> float:
        return ((self.x - other.x) ** 2 + (self.y - other.y) ** 2) ** 0.5

class Shape:
    """Base shape using composition."""
    
    def __init__(self, position: Point):
        self.position = position
        self.visible = True
    
    def move(self, dx: float, dy: float) -> None:
        self.position.move(dx, dy)
    
    def hide(self) -> None:
        self.visible = False
    
    def show(self) -> None:
        self.visible = True

class Circle(Shape):
    """Circle implementation with composition."""
    
    def __init__(self, position: Point, radius: float):
        super().__init__(position)
        self.radius = radius
    
    def draw(self) -> str:
        if not self.visible:
            return ""
        return f"Circle at ({self.position.x}, {self.position.y}) with radius {self.radius}"
    
    def area(self) -> float:
        return 3.14159 * self.radius ** 2

class Rectangle(Shape):
    """Rectangle implementation with composition."""
    
    def __init__(self, position: Point, width: float, height: float):
        super().__init__(position)
        self.width = width
        self.height = height
    
    def draw(self) -> str:
        if not self.visible:
            return ""
        return f"Rectangle at ({self.position.x}, {self.position.y}) {self.width}x{self.height}"
    
    def area(self) -> float:
        return self.width * self.height

# 2. Mixin Pattern for Cross-Cutting Concerns
class TimestampMixin:
    """Mixin for adding timestamp functionality."""
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        from datetime import datetime
        self.created_at = datetime.now()
        self.updated_at = datetime.now()
    
    def touch(self) -> None:
        """Update the timestamp."""
        from datetime import datetime
        self.updated_at = datetime.now()

class SerializableMixin:
    """Mixin for JSON serialization."""
    
    def to_dict(self) -> Dict[str, Any]:
        """Convert object to dictionary."""
        result = {}
        for key, value in self.__dict__.items():
            if not key.startswith("_"):
                if hasattr(value, "to_dict"):
                    result[key] = value.to_dict()
                else:
                    result[key] = value
        return result
    
    def to_json(self) -> str:
        """Convert object to JSON string."""
        import json
        return json.dumps(self.to_dict(), default=str)

class User(TimestampMixin, SerializableMixin):
    """User class with mixins."""
    
    def __init__(self, name: str, email: str):
        super().__init__()
        self.name = name
        self.email = email
    
    def __repr__(self) -> str:
        return f"User(name=''{self.name}'', email=''{self.email}'')"

# 3. Professional Method Resolution Order (MRO)
class A:
    def method(self):
        print("A.method")
        return "A"

class B(A):
    def method(self):
        print("B.method")
        result = super().method()
        return f"B -> {result}"

class C(A):
    def method(self):
        print("C.method")
        result = super().method()
        return f"C -> {result}"

class D(B, C):
    def method(self):
        print("D.method")
        result = super().method()
        return f"D -> {result}"

# Usage example showing MRO
def demonstrate_mro():
    """Demonstrate Method Resolution Order."""
    d = D()
    print(f"MRO: {[cls.__name__ for cls in D.__mro__]}")
    result = d.method()
    print(f"Final result: {result}")
</div>

<div class="professional-tips">
<h4>💡 OOP Best Practices in Python</h4>
<ol>
<li><strong>Favor Composition:</strong> Use composition over inheritance when possible</li>
<li><strong>SOLID Principles:</strong> Apply SOLID principles for maintainable code</li>
<li><strong>Protocols over ABCs:</strong> Use typing.Protocol for duck typing</li>
<li><strong>Descriptors:</strong> Use descriptors for attribute validation and computed properties</li>
<li><strong>Design Patterns:</strong> Apply appropriate patterns but avoid over-engineering</li>
<li><strong>Mixins:</strong> Use mixins for cross-cutting concerns</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Advanced OOP Project</h4>
<p><strong>Build a Content Management System</strong></p>
<ul>
<li>Design class hierarchy using SOLID principles</li>
<li>Implement observer pattern for event handling</li>
<li>Create factory for different content types</li>
<li>Use mixins for audit trails and caching</li>
<li>Apply strategy pattern for content rendering</li>
<li>Include comprehensive unit tests and documentation</li>
</ul>
</div>'
WHERE course_id = 2 AND title = 'Object-Oriented Programming';

-- ========================================
-- DATA SCIENCE COURSE ENHANCEMENTS  
-- ========================================

-- Update Data Analysis Fundamentals lesson
UPDATE lessons 
SET content = '<div class="professional-notes">
<h3>🎯 Learning Objectives</h3>
<ul>
<li>Master advanced pandas operations for large-scale data analysis</li>
<li>Implement statistical analysis and hypothesis testing</li>
<li>Apply data cleaning and preprocessing techniques</li>
<li>Create professional data analysis workflows</li>
</ul>
</div>

<h3>Professional Data Analysis with Python</h3>
<p>Professional data analysis requires mastery of pandas, NumPy, and statistical libraries, along with understanding of data quality, statistical significance, and reproducible analysis workflows. This includes handling missing data, outliers, and creating robust analytical pipelines.</p>

<div class="professional-insight">
<h4>📊 Data Analysis Pipeline</h4>
<ul>
<li><strong>Data Collection:</strong> APIs, databases, file formats, web scraping</li>
<li><strong>Data Quality:</strong> Missing values, duplicates, inconsistencies</li>
<li><strong>Exploratory Analysis:</strong> Statistical summaries, distributions, correlations</li>
<li><strong>Statistical Testing:</strong> Hypothesis testing, confidence intervals</li>
</ul>
</div>

<h3>Advanced Pandas Operations</h3>
<div class="code-example">
# Professional Pandas for Large-Scale Analysis

import pandas as pd
import numpy as np
from typing import List, Dict, Any, Optional, Union
import warnings
from datetime import datetime, timedelta
import logging

class ProfessionalDataAnalyzer:
    """Advanced data analysis class with professional methods."""
    
    def __init__(self, data: pd.DataFrame):
        self.data = data.copy()
        self.logger = self._setup_logger()
        self.analysis_metadata = {
            "created_at": datetime.now(),
            "original_shape": data.shape,
            "operations": []
        }
    
    def _setup_logger(self) -> logging.Logger:
        """Setup logger for analysis tracking."""
        logger = logging.getLogger(self.__class__.__name__)
        logger.setLevel(logging.INFO)
        if not logger.handlers:
            handler = logging.StreamHandler()
            formatter = logging.Formatter(
                "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
            )
            handler.setFormatter(formatter)
            logger.addHandler(handler)
        return logger
    
    def _log_operation(self, operation: str, details: Dict[str, Any] = None):
        """Log analysis operations for reproducibility."""
        operation_info = {
            "operation": operation,
            "timestamp": datetime.now(),
            "shape_after": self.data.shape,
            "details": details or {}
        }
        self.analysis_metadata["operations"].append(operation_info)
        self.logger.info(f"Applied {operation}: {details}")
    
    def data_quality_report(self) -> Dict[str, Any]:
        """Generate comprehensive data quality report."""
        report = {
            "shape": self.data.shape,
            "memory_usage": self.data.memory_usage(deep=True).sum(),
            "missing_values": {},
            "duplicates": {},
            "data_types": {},
            "numeric_summaries": {},
            "categorical_summaries": {}
        }
        
        # Missing values analysis
        missing_counts = self.data.isnull().sum()
        missing_percentages = (missing_counts / len(self.data)) * 100
        report["missing_values"] = {
            "counts": missing_counts[missing_counts > 0].to_dict(),
            "percentages": missing_percentages[missing_percentages > 0].to_dict()
        }
        
        # Duplicate analysis
        duplicate_count = self.data.duplicated().sum()
        report["duplicates"] = {
            "count": duplicate_count,
            "percentage": (duplicate_count / len(self.data)) * 100
        }
        
        # Data types
        report["data_types"] = self.data.dtypes.value_counts().to_dict()
        
        # Numeric columns analysis
        numeric_cols = self.data.select_dtypes(include=[np.number]).columns
        if not numeric_cols.empty:
            numeric_summary = self.data[numeric_cols].describe()
            report["numeric_summaries"] = numeric_summary.to_dict()
        
        # Categorical columns analysis
        categorical_cols = self.data.select_dtypes(include=["object", "category"]).columns
        for col in categorical_cols:
            unique_count = self.data[col].nunique()
            most_frequent = self.data[col].mode().iloc[0] if not self.data[col].empty else None
            report["categorical_summaries"][col] = {
                "unique_count": unique_count,
                "most_frequent": most_frequent,
                "cardinality_ratio": unique_count / len(self.data)
            }
        
        return report
    
    def advanced_missing_value_handling(
        self, 
        strategy: str = "smart",
        threshold: float = 0.5
    ) -> "ProfessionalDataAnalyzer":
        """Advanced missing value handling with multiple strategies."""
        
        missing_info = self.data.isnull().sum()
        
        if strategy == "smart":
            for column in self.data.columns:
                missing_pct = missing_info[column] / len(self.data)
                
                if missing_pct > threshold:
                    # Drop columns with too many missing values
                    self.data = self.data.drop(columns=[column])
                    self.logger.warning(f"Dropped column {column} ({missing_pct:.1%} missing)")
                
                elif missing_pct > 0:
                    if self.data[column].dtype in ["float64", "int64"]:
                        # Numeric: use median for skewed, mean for normal
                        if abs(self.data[column].skew()) > 1:
                            fill_value = self.data[column].median()
                            method = "median"
                        else:
                            fill_value = self.data[column].mean()
                            method = "mean"
                        self.data[column].fillna(fill_value, inplace=True)
                    else:
                        # Categorical: use mode
                        mode_value = self.data[column].mode().iloc[0] if not self.data[column].mode().empty else "Unknown"
                        self.data[column].fillna(mode_value, inplace=True)
                        method = "mode"
                    
                    self.logger.info(f"Filled {column} missing values using {method}")
        
        self._log_operation("missing_value_handling", {"strategy": strategy, "threshold": threshold})
        return self
    
    def detect_and_handle_outliers(
        self, 
        method: str = "iqr",
        action: str = "cap"
    ) -> "ProfessionalDataAnalyzer":
        """Detect and handle outliers using various methods."""
        
        numeric_cols = self.data.select_dtypes(include=[np.number]).columns
        outlier_info = {}
        
        for col in numeric_cols:
            original_count = len(self.data)
            
            if method == "iqr":
                Q1 = self.data[col].quantile(0.25)
                Q3 = self.data[col].quantile(0.75)
                IQR = Q3 - Q1
                lower_bound = Q1 - 1.5 * IQR
                upper_bound = Q3 + 1.5 * IQR
                
                outliers_mask = (self.data[col] < lower_bound) | (self.data[col] > upper_bound)
                
            elif method == "zscore":
                z_scores = np.abs((self.data[col] - self.data[col].mean()) / self.data[col].std())
                outliers_mask = z_scores > 3
                lower_bound = self.data[col].mean() - 3 * self.data[col].std()
                upper_bound = self.data[col].mean() + 3 * self.data[col].std()
            
            outlier_count = outliers_mask.sum()
            
            if outlier_count > 0:
                if action == "remove":
                    self.data = self.data[~outliers_mask]
                elif action == "cap":
                    self.data.loc[self.data[col] < lower_bound, col] = lower_bound
                    self.data.loc[self.data[col] > upper_bound, col] = upper_bound
                
                outlier_info[col] = {
                    "count": outlier_count,
                    "percentage": (outlier_count / original_count) * 100
                }
        
        self._log_operation(
            "outlier_handling", 
            {"method": method, "action": action, "outliers_found": outlier_info}
        )
        return self
    
    def create_feature_interactions(
        self, 
        numeric_cols: Optional[List[str]] = None
    ) -> "ProfessionalDataAnalyzer":
        """Create interaction features between numeric variables."""
        
        if numeric_cols is None:
            numeric_cols = self.data.select_dtypes(include=[np.number]).columns.tolist()
        
        interactions_created = []
        
        # Create polynomial features
        for col in numeric_cols:
            if col in self.data.columns:
                self.data[f"{col}_squared"] = self.data[col] ** 2
                self.data[f"{col}_log"] = np.log1p(np.abs(self.data[col]))
                interactions_created.extend([f"{col}_squared", f"{col}_log"])
        
        # Create interaction terms for pairs
        from itertools import combinations
        for col1, col2 in combinations(numeric_cols, 2):
            if col1 in self.data.columns and col2 in self.data.columns:
                interaction_name = f"{col1}_x_{col2}"
                self.data[interaction_name] = self.data[col1] * self.data[col2]
                interactions_created.append(interaction_name)
        
        self._log_operation(
            "feature_interactions", 
            {"interactions_created": interactions_created}
        )
        return self
    
    def advanced_groupby_analysis(
        self, 
        groupby_cols: List[str],
        agg_functions: Dict[str, List[str]]
    ) -> pd.DataFrame:
        """Perform advanced grouped analysis with multiple aggregations."""
        
        # Define custom aggregation functions
        def coefficient_of_variation(x):
            return x.std() / x.mean() if x.mean() != 0 else 0
        
        def percentile_range(x):
            return x.quantile(0.75) - x.quantile(0.25)
        
        # Extend aggregation functions
        extended_agg = {}
        for col, funcs in agg_functions.items():
            extended_funcs = funcs.copy()
            if col in self.data.select_dtypes(include=[np.number]).columns:
                extended_funcs.extend([coefficient_of_variation, percentile_range])
            extended_agg[col] = extended_funcs
        
        result = self.data.groupby(groupby_cols).agg(extended_agg)
        
        # Flatten column names
        result.columns = [f"{col}_{func}" for col, func in result.columns]
        
        self._log_operation(
            "groupby_analysis",
            {"groupby_cols": groupby_cols, "result_shape": result.shape}
        )
        
        return result
</div>

<div class="professional-tips">
<h4>💡 Data Analysis Best Practices</h4>
<ol>
<li><strong>Data Quality First:</strong> Always start with comprehensive data quality assessment</li>
<li><strong>Reproducibility:</strong> Document all analysis steps and decisions</li>
<li><strong>Statistical Rigor:</strong> Apply appropriate statistical tests and validate assumptions</li>
<li><strong>Visualization:</strong> Use plots to understand data patterns before analysis</li>
<li><strong>Version Control:</strong> Track analysis versions and data lineage</li>
<li><strong>Performance:</strong> Optimize for memory and computation efficiency</li>
</ol>
</div>

<div class="exercise">
<h4>🎯 Professional Data Analysis Project</h4>
<p><strong>Comprehensive Sales Analysis Dashboard</strong></p>
<ul>
<li>Perform end-to-end data cleaning and preprocessing</li>
<li>Conduct statistical hypothesis testing</li>
<li>Create advanced visualizations with Matplotlib/Plotly</li>
<li>Build automated analysis pipeline</li>
<li>Generate executive summary with insights</li>
<li>Document methodology and assumptions</li>
</ul>
</div>'
WHERE course_id = 3 AND title = 'Data Analysis Fundamentals';