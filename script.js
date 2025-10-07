// Global variables
let currentUser = null;
let isLessonViewer = false;

async function loadCurrentUser() {
    const token = localStorage.getItem('authToken');
    if (token) {
        try {
            const response = await apiService.getProfile();
            currentUser = response.user;
            updateAuthUI();
            await loadCoursesData();
        } catch (error) {
            console.error('Failed to load user profile:', error);
            // Clear invalid token
            localStorage.removeItem('authToken');
            apiService.setToken(null);
        }
    }
}

function saveCurrentUser() {
    // No longer needed as JWT handles authentication state
    // User data is fetched from API when needed
}

function updateAuthUI() {
    const authButtons = document.getElementById('auth-buttons');
    const userInfo = document.getElementById('user-info');
    const userWelcome = document.getElementById('user-welcome');

    if (currentUser) {
        if (authButtons) authButtons.style.display = 'none';
        if (userInfo) userInfo.style.display = 'block';
        if (userWelcome) userWelcome.textContent = `Welcome, ${currentUser.name}!`;
    } else {
        if (authButtons) authButtons.style.display = 'block';
        if (userInfo) userInfo.style.display = 'none';
    }
}

// Modal functions
function showLoginModal() {
    document.getElementById('login-modal').style.display = 'flex';
}

function showRegisterModal() {
    document.getElementById('register-modal').style.display = 'flex';
}

function closeModal(modalId) {
    document.getElementById(modalId).style.display = 'none';
}

function switchToRegister() {
    closeModal('login-modal');
    showRegisterModal();
}

function switchToLogin() {
    closeModal('register-modal');
    showLoginModal();
}

// Authentication functions
async function register(name, email, password) {
    try {
        const response = await apiService.register(name, email, password);
        currentUser = response.user;
        updateAuthUI();
        await loadCoursesData();
        return response.user;
    } catch (error) {
        throw error;
    }
}

async function login(email, password) {
    try {
        const response = await apiService.login(email, password);
        currentUser = response.user;
        updateAuthUI();
        await loadCoursesData();
        return response.user;
    } catch (error) {
        throw error;
    }
}

function logout() {
    currentUser = null;
    apiService.logout();
    updateAuthUI();
    // Reset courses data
    coursesData.length = 0;
}

// Course data stored as a JavaScript array
const coursesData = [
    {
        id: 1,
        title: "Introduction to Web Development",
        description: "Learn the fundamentals of HTML, CSS, and JavaScript. Perfect for beginners who want to start their journey in web development.",
        duration: "4 weeks",
        level: "Beginner",
        lessons: [
            {
                title: "HTML Basics and Structure",
                content: {
                    overview: "Learn the foundation of web development with HTML (HyperText Markup Language). Understand how to structure web pages using semantic elements.",
                    content: `<h3>What is HTML?</h3>
                    <p>HTML is the standard markup language for creating web pages. It describes the structure of a web page using markup tags.</p>
                    
                    <h3>Basic HTML Structure</h3>
                    <div class="code-example">
&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
    &lt;meta charset="UTF-8"&gt;
    &lt;title&gt;My First Web Page&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;h1&gt;Welcome to HTML&lt;/h1&gt;
    &lt;p&gt;This is my first paragraph.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;</div>
                    
                    <h3>Common HTML Elements</h3>
                    <p>• &lt;h1&gt; to &lt;h6&gt;: Headings<br>
                    • &lt;p&gt;: Paragraphs<br>
                    • &lt;div&gt;: Division/container<br>
                    • &lt;span&gt;: Inline container<br>
                    • &lt;a&gt;: Links<br>
                    • &lt;img&gt;: Images</p>
                    
                    <div class="exercise">
                        <h4>Practice Exercise</h4>
                        <p>Create a simple HTML page with a heading, two paragraphs, and a link to your favorite website.</p>
                    </div>`
                }
            }
        ],
        completed: false,
        quiz: {
            questions: [
                {
                    question: "What does HTML stand for?",
                    options: ["Hyper Text Markup Language", "High Tech Modern Language", "Home Tool Markup Language", "Hyperlink Text Markup Language"],
                    correct: 0,
                    explanation: "HTML stands for Hyper Text Markup Language, which is the standard markup language for creating web pages."
                },
                {
                    question: "Which HTML element is used for the largest heading?",
                    options: ["<header>", "<h6>", "<h1>", "<heading>"],
                    correct: 2,
                    explanation: "The <h1> element represents the largest heading in HTML, with <h6> being the smallest."
                },
                {
                    question: "What is the correct HTML element for inserting a line break?",
                    options: ["<break>", "<br>", "<lb>", "<newline>"],
                    correct: 1,
                    explanation: "The <br> element represents a line break in HTML and is a self-closing tag."
                },
                {
                    question: "Which attribute specifies the URL of the page the link goes to?",
                    options: ["src", "link", "href", "url"],
                    correct: 2,
                    explanation: "The 'href' attribute specifies the URL of the page the link goes to in anchor (<a>) tags."
                },
                {
                    question: "What is the correct HTML for creating a hyperlink?",
                    options: ["<a url='http://example.com'>Example</a>", "<link href='http://example.com'>Example</link>", "<a href='http://example.com'>Example</a>", "<hyperlink>http://example.com</hyperlink>"],
                    correct: 2,
                    explanation: "The correct syntax for creating a hyperlink is <a href='URL'>Link Text</a>."
                },
                {
                    question: "Which HTML element defines the document type?",
                    options: ["<!DOCTYPE html>", "<doctype>", "<document>", "<html>"],
                    correct: 0,
                    explanation: "The <!DOCTYPE html> declaration defines that this document is an HTML5 document."
                },
                {
                    question: "What is the correct HTML element for inserting an image?",
                    options: ["<image>", "<img>", "<pic>", "<photo>"],
                    correct: 1,
                    explanation: "The <img> element is used to insert images in HTML and is a self-closing tag."
                },
                {
                    question: "Which HTML attribute is used to define inline styles?",
                    options: ["class", "style", "styles", "css"],
                    correct: 1,
                    explanation: "The 'style' attribute allows you to apply CSS styles directly to an HTML element."
                },
                {
                    question: "What is the correct HTML for creating an unordered list?",
                    options: ["<list>", "<ol>", "<ul>", "<unordered>"],
                    correct: 2,
                    explanation: "The <ul> element creates an unordered (bulleted) list in HTML."
                },
                {
                    question: "Which HTML element is used to define important text?",
                    options: ["<important>", "<strong>", "<bold>", "<em>"],
                    correct: 1,
                    explanation: "The <strong> element defines text with strong importance, typically displayed in bold."
                }
            ]
        }
    },
    {
        id: 2,
        title: "Python Programming Essentials",
        description: "Master Python programming from basics to advanced concepts. Includes hands-on projects and real-world applications.",
        duration: "6 weeks",
        level: "Intermediate",
        lessons: [
            {
                title: "Python Syntax and Variables",
                content: {
                    overview: "Learn Python's clean syntax and how to work with variables and basic data types.",
                    content: `<h3>Python Syntax Basics</h3>
                    <p>Python is known for its readable and clean syntax. No semicolons needed!</p>
                    
                    <h3>Variables and Assignment</h3>
                    <div class="code-example">
# Variables in Python
name = "Alice"
age = 25
height = 5.6
is_student = True

# Print variables
print(f"Name: {name}")
print(f"Age: {age}")
print(f"Height: {height} feet")
print(f"Is student: {is_student}")</div>
                    
                    <h3>Data Types</h3>
                    <p>• <strong>Strings:</strong> Text data in quotes<br>
                    • <strong>Integers:</strong> Whole numbers<br>
                    • <strong>Floats:</strong> Decimal numbers<br>
                    • <strong>Booleans:</strong> True or False<br>
                    • <strong>Lists:</strong> Ordered collections<br>
                    • <strong>Dictionaries:</strong> Key-value pairs</p>
                    
                    <div class="exercise">
                        <h4>Practice Exercise</h4>
                        <p>Create variables for your personal information and print them using f-strings.</p>
                    </div>`
                }
            }
        ],
        completed: false,
        quiz: {
            questions: [
                {
                    question: "What is the correct way to create a variable in Python?",
                    options: ["var name = 'John'", "name = 'John'", "string name = 'John'", "create name = 'John'"],
                    correct: 1,
                    explanation: "Python uses simple assignment syntax without type declarations: variable_name = value"
                },
                {
                    question: "Which of the following is a mutable data type in Python?",
                    options: ["String", "Tuple", "List", "Integer"],
                    correct: 2,
                    explanation: "Lists are mutable, meaning their contents can be changed after creation. Strings, tuples, and integers are immutable."
                },
                {
                    question: "What does the 'len()' function return?",
                    options: ["The type of an object", "The length of an object", "The value of an object", "The memory address"],
                    correct: 1,
                    explanation: "The len() function returns the number of items in an object like a string, list, or dictionary."
                },
                {
                    question: "Which keyword is used to create a function in Python?",
                    options: ["function", "def", "create", "func"],
                    correct: 1,
                    explanation: "The 'def' keyword is used to define functions in Python."
                },
                {
                    question: "What is the correct way to handle exceptions in Python?",
                    options: ["try-catch", "try-except", "catch-throw", "handle-error"],
                    correct: 1,
                    explanation: "Python uses try-except blocks for exception handling, not try-catch like some other languages."
                },
                {
                    question: "Which method adds an item to the end of a list?",
                    options: ["add()", "append()", "insert()", "extend()"],
                    correct: 1,
                    explanation: "The append() method adds a single item to the end of a list."
                },
                {
                    question: "What is list comprehension?",
                    options: ["A way to compress lists", "A concise way to create lists", "A method to sort lists", "A way to delete lists"],
                    correct: 1,
                    explanation: "List comprehension provides a concise way to create lists using a single line of code with optional conditions."
                },
                {
                    question: "What does the '__init__' method do in a class?",
                    options: ["Deletes the object", "Initializes the object", "Copies the object", "Prints the object"],
                    correct: 1,
                    explanation: "The __init__ method is the constructor that initializes a new object when it's created."
                },
                {
                    question: "Which operator is used for floor division in Python?",
                    options: ["/", "//", "%", "**"],
                    correct: 1,
                    explanation: "The // operator performs floor division, returning the integer part of the division result."
                },
                {
                    question: "Which statement is used to exit a loop prematurely?",
                    options: ["exit", "break", "stop", "return"],
                    correct: 1,
                    explanation: "The 'break' statement is used to exit a loop before it has completed all iterations."
                }
            ]
        }
    },
    {
        id: 3,
        title: "Data Science with AI",
        description: "Explore the exciting world of data science and artificial intelligence. Learn to analyze data and build intelligent systems.",
        duration: "8 weeks",
        level: "Advanced",
        lessons: [
            {
                title: "Introduction to Data Science",
                content: {
                    overview: "Get started with data science fundamentals and understand the role of data in making informed decisions.",
                    content: `<h3>What is Data Science?</h3>
                    <p>Data science combines statistical analysis, machine learning, and domain expertise to extract insights from data.</p>
                    
                    <h3>The Data Science Process</h3>
                    <p>1. <strong>Problem Definition:</strong> Define clear objectives<br>
                    2. <strong>Data Collection:</strong> Gather relevant data<br>
                    3. <strong>Data Cleaning:</strong> Handle missing/incorrect data<br>
                    4. <strong>Exploratory Analysis:</strong> Understand data patterns<br>
                    5. <strong>Modeling:</strong> Apply algorithms and techniques<br>
                    6. <strong>Validation:</strong> Test and validate results<br>
                    7. <strong>Communication:</strong> Present findings</p>
                    
                    <div class="exercise">
                        <h4>Practice Exercise</h4>
                        <p>Identify a real-world problem that could benefit from data science analysis.</p>
                    </div>`
                }
            }
        ],
        completed: false,
        quiz: {
            questions: [
                {
                    question: "What is the primary goal of data science?",
                    options: ["To create websites", "To extract insights from data", "To design databases", "To write code"],
                    correct: 1,
                    explanation: "Data science aims to extract meaningful insights and knowledge from data to help make informed decisions."
                },
                {
                    question: "Which programming language is most commonly used in data science?",
                    options: ["Java", "C++", "Python", "PHP"],
                    correct: 2,
                    explanation: "Python is widely used in data science due to its extensive libraries like pandas, numpy, and scikit-learn."
                },
                {
                    question: "What is machine learning?",
                    options: ["A type of computer", "A subset of AI that learns patterns from data", "A programming language", "A database system"],
                    correct: 1,
                    explanation: "Machine learning is a subset of artificial intelligence that enables systems to learn and improve from data without being explicitly programmed."
                },
                {
                    question: "What does EDA stand for in data science?",
                    options: ["Enhanced Data Analysis", "Exploratory Data Analysis", "Expert Data Algorithm", "Electronic Data Archive"],
                    correct: 1,
                    explanation: "EDA (Exploratory Data Analysis) is the process of analyzing and investigating data to discover patterns and insights."
                },
                {
                    question: "Which of these is NOT a common data visualization tool?",
                    options: ["Matplotlib", "Seaborn", "Tableau", "MySQL"],
                    correct: 3,
                    explanation: "MySQL is a database management system, not a data visualization tool. The others are popular visualization libraries/tools."
                },
                {
                    question: "What is the purpose of data cleaning?",
                    options: ["To delete all data", "To remove errors and inconsistencies", "To encrypt data", "To compress data"],
                    correct: 1,
                    explanation: "Data cleaning involves identifying and correcting errors, handling missing values, and ensuring data quality for analysis."
                },
                {
                    question: "What is a neural network?",
                    options: ["A type of database", "A network of computers", "A computational model inspired by the brain", "An internet protocol"],
                    correct: 2,
                    explanation: "A neural network is a computational model inspired by the structure and function of biological neural networks in the brain."
                },
                {
                    question: "What does AI stand for?",
                    options: ["Automated Intelligence", "Artificial Intelligence", "Advanced Integration", "Algorithmic Innovation"],
                    correct: 1,
                    explanation: "AI stands for Artificial Intelligence, which refers to computer systems that can perform tasks typically requiring human intelligence."
                },
                {
                    question: "Which type of learning uses labeled training data?",
                    options: ["Unsupervised learning", "Supervised learning", "Reinforcement learning", "Deep learning"],
                    correct: 1,
                    explanation: "Supervised learning uses labeled training data where the correct answers are provided to train the model."
                },
                {
                    question: "What is Big Data characterized by?",
                    options: ["Only volume", "Volume, velocity, and variety", "Only velocity", "Only variety"],
                    correct: 1,
                    explanation: "Big Data is characterized by the '3 Vs': Volume (large amounts), Velocity (high speed), and Variety (different types of data)."
                }
            ]
        }
    },
    {
        id: 4,
        title: "Mobile App Development",
        description: "Build mobile applications for iOS and Android. Learn React Native to develop cross-platform mobile apps.",
        duration: "6 weeks",
        level: "Intermediate",
        lessons: [
            {
                title: "Mobile Development Overview",
                content: {
                    overview: "Introduction to mobile app development platforms and choosing the right approach for your project.",
                    content: `<h3>Mobile Development Approaches</h3>
                    <p>• <strong>Native Development:</strong> Platform-specific languages (Swift/Kotlin)<br>
                    • <strong>Cross-Platform:</strong> React Native, Flutter, Xamarin<br>
                    • <strong>Web-Based:</strong> Progressive Web Apps (PWAs)</p>
                    
                    <h3>React Native Benefits</h3>
                    <p>• Write once, run on both iOS and Android<br>
                    • Use familiar React concepts<br>
                    • Hot reload for faster development<br>
                    • Access to device features<br>
                    • Large community and ecosystem</p>
                    
                    <div class="exercise">
                        <h4>Practice Exercise</h4>
                        <p>Compare different mobile development approaches and choose the best one for a specific project.</p>
                    </div>`
                }
            }
        ],
        completed: false,
        quiz: {
            questions: [
                {
                    question: "What does React Native allow you to do?",
                    options: ["Build web apps only", "Build mobile apps for iOS and Android", "Build desktop apps only", "Build games only"],
                    correct: 1,
                    explanation: "React Native allows you to build mobile applications for both iOS and Android using JavaScript and React."
                },
                {
                    question: "Which component is used for scrollable content in React Native?",
                    options: ["View", "ScrollView", "FlatList", "Both ScrollView and FlatList"],
                    correct: 3,
                    explanation: "Both ScrollView and FlatList can be used for scrollable content, with FlatList being more efficient for large lists."
                },
                {
                    question: "What is the correct way to style components in React Native?",
                    options: ["CSS files", "StyleSheet.create()", "Inline styles only", "SCSS"],
                    correct: 1,
                    explanation: "React Native uses StyleSheet.create() to define styles, which provides optimization and validation benefits."
                },
                {
                    question: "Which hook is used to manage state in React Native functional components?",
                    options: ["useEffect", "useState", "useContext", "useReducer"],
                    correct: 1,
                    explanation: "useState is the primary hook for managing local state in functional components."
                },
                {
                    question: "What is the purpose of navigation in mobile apps?",
                    options: ["To style components", "To move between screens", "To store data", "To handle gestures"],
                    correct: 1,
                    explanation: "Navigation allows users to move between different screens or sections of a mobile application."
                },
                {
                    question: "Which method is used to make API calls in React Native?",
                    options: ["fetch()", "axios", "Both fetch() and axios", "XMLHttpRequest"],
                    correct: 2,
                    explanation: "Both fetch() (built-in) and axios (third-party library) are commonly used for API calls in React Native."
                },
                {
                    question: "What is the difference between iOS and Android development approaches?",
                    options: ["No difference", "Different programming languages and design guidelines", "Only language difference", "Only design difference"],
                    correct: 1,
                    explanation: "iOS and Android have different programming languages, design guidelines, and platform-specific features."
                },
                {
                    question: "Which file extension is used for React Native components?",
                    options: [".js or .jsx", ".rn", ".react", ".native"],
                    correct: 0,
                    explanation: "React Native components typically use .js or .jsx file extensions, similar to React web components."
                },
                {
                    question: "What is the purpose of testing in mobile app development?",
                    options: ["To slow down development", "To ensure app quality and functionality", "To increase app size", "To complicate the code"],
                    correct: 1,
                    explanation: "Testing ensures the app works correctly, performs well, and provides a good user experience."
                },
                {
                    question: "Which stores are used to distribute mobile apps?",
                    options: ["Only Google Play Store", "Only Apple App Store", "Google Play Store and Apple App Store", "Only third-party stores"],
                    correct: 2,
                    explanation: "The two main app stores are Google Play Store for Android apps and Apple App Store for iOS apps."
                }
            ]
        }
    },
    {
        id: 5,
        title: "Digital Marketing Fundamentals",
        description: "Master the art of digital marketing. Learn SEO, social media marketing, and online advertising strategies.",
        duration: "5 weeks",
        level: "Beginner",
        lessons: [
            {
                title: "Digital Marketing Overview",
                content: {
                    overview: "Introduction to digital marketing strategies and channels in the modern business landscape.",
                    content: `<h3>What is Digital Marketing?</h3>
                    <p>Digital marketing encompasses all marketing efforts that use electronic devices or the internet to connect with current and prospective customers.</p>
                    
                    <h3>Digital Marketing Channels</h3>
                    <p>• <strong>Search Engine Marketing:</strong> SEO, PPC<br>
                    • <strong>Social Media Marketing:</strong> Facebook, Instagram, Twitter, LinkedIn<br>
                    • <strong>Email Marketing:</strong> Newsletters, drip campaigns<br>
                    • <strong>Content Marketing:</strong> Blogs, videos, podcasts<br>
                    • <strong>Display Advertising:</strong> Banner ads, retargeting<br>
                    • <strong>Influencer Marketing:</strong> Partnerships with content creators</p>
                    
                    <div class="exercise">
                        <h4>Practice Exercise</h4>
                        <p>Analyze a brand you love and identify which digital marketing channels they use effectively.</p>
                    </div>`
                }
            }
        ],
        completed: false,
        quiz: {
            questions: [
                {
                    question: "What is digital marketing?",
                    options: ["Only social media marketing", "Marketing using electronic devices and internet", "Only email marketing", "Only website creation"],
                    correct: 1,
                    explanation: "Digital marketing encompasses all marketing efforts using electronic devices or the internet to connect with customers."
                },
                {
                    question: "What does SEO stand for?",
                    options: ["Social Engine Optimization", "Search Engine Optimization", "Site Engine Operation", "Search Engine Operation"],
                    correct: 1,
                    explanation: "SEO stands for Search Engine Optimization, the practice of optimizing websites to rank higher in search results."
                },
                {
                    question: "Which metric measures the percentage of people who clicked on your ad?",
                    options: ["CTR (Click-Through Rate)", "CPC (Cost Per Click)", "CPM (Cost Per Mille)", "CPA (Cost Per Action)"],
                    correct: 0,
                    explanation: "CTR (Click-Through Rate) measures the percentage of people who clicked on your ad after seeing it."
                },
                {
                    question: "What is the primary goal of content marketing?",
                    options: ["Direct sales", "Provide value and build relationships", "Increase website traffic only", "Generate leads only"],
                    correct: 1,
                    explanation: "Content marketing focuses on providing valuable content to build relationships and establish authority with your audience."
                },
                {
                    question: "Which platform is best for B2B marketing?",
                    options: ["TikTok", "Instagram", "LinkedIn", "Snapchat"],
                    correct: 2,
                    explanation: "LinkedIn is the primary professional networking platform, making it ideal for B2B marketing."
                },
                {
                    question: "What is A/B testing?",
                    options: ["Testing two different versions to see which performs better", "Testing on mobile vs desktop", "Testing in different countries", "Testing at different times"],
                    correct: 0,
                    explanation: "A/B testing involves comparing two versions of something to determine which performs better."
                },
                {
                    question: "What does PPC stand for?",
                    options: ["Pay Per Customer", "Pay Per Click", "Price Per Click", "Profit Per Click"],
                    correct: 1,
                    explanation: "PPC stands for Pay Per Click, where advertisers pay when someone clicks on their ad."
                },
                {
                    question: "Which is NOT a key component of email marketing?",
                    options: ["Subject line", "Call-to-action", "Video content", "Sender name"],
                    correct: 2,
                    explanation: "While video can be included in emails, it's not a key component. Subject line, CTA, and sender name are essential elements."
                },
                {
                    question: "What is the marketing funnel?",
                    options: ["A tool for email marketing", "The customer journey from awareness to purchase", "A social media strategy", "A type of advertisement"],
                    correct: 1,
                    explanation: "The marketing funnel represents the customer journey from initial awareness to final purchase and beyond."
                },
                {
                    question: "What is the primary purpose of Google Analytics?",
                    options: ["To create advertisements", "To track and analyze website traffic", "To design websites", "To send emails"],
                    correct: 1,
                    explanation: "Google Analytics tracks and analyzes website traffic, user behavior, and marketing performance."
                }
            ]
        }
    }
];

// Load courses data from API
async function loadCoursesData() {
    try {
        const response = await apiService.getCourses();
        coursesData.length = 0; // Clear existing data
        coursesData.push(...response.courses);
        
        // Load user progress after loading courses
        await loadUserProgress();
        
        // Update UI if courses section is active
        const coursesSection = document.getElementById('courses-section');
        if (coursesSection && coursesSection.classList.contains('active')) {
            renderCourses();
        }
    } catch (error) {
        console.error('Failed to load courses:', error);
        // Fallback to static data if API fails
        loadStaticCoursesData();
    }
}

// Fallback function with static course data (for offline mode)
function loadStaticCoursesData() {
    // Keep the original static coursesData as fallback
    console.log('Using static course data as fallback');
}

// API-based progress tracking functions
async function saveCourseProgress(courseId, completed, lessonId = null) {
    try {
        const progressData = {
            courseId: courseId,
            completed: completed
        };
        
        if (lessonId) {
            progressData.lessonId = lessonId;
        }
        
        const response = await apiService.saveProgress(progressData);
        return response;
    } catch (error) {
        console.error('Failed to save progress:', error);
        throw error;
    }
}

async function loadUserProgress() {
    try {
        const response = await apiService.getProgress();
        // Update local course data with progress
        if (response.progress && Array.isArray(response.progress)) {
            response.progress.forEach(progressItem => {
                const course = coursesData.find(c => c.id == progressItem.course_id);
                if (course) {
                    course.completed = progressItem.completed;
                }
            });
        }
        return response.progress;
    } catch (error) {
        console.error('Failed to load progress:', error);
        // Don't throw error - just log it and continue with local data
        return null;
    }
}

// Navigation functionality
function showSection(sectionName) {
    // Hide all sections
    const sections = document.querySelectorAll('.section');
    sections.forEach(section => section.classList.remove('active'));
    
    // Remove active class from nav links
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => link.classList.remove('active'));
    
    // Show selected section
    const targetSection = document.getElementById(`${sectionName}-section`);
    if (targetSection) {
        targetSection.classList.add('active');
    }
    
    // Add active class to corresponding nav link
    const activeNavLink = document.querySelector(`[href="#${sectionName}"]`);
    if (activeNavLink) {
        activeNavLink.classList.add('active');
    }
    
    // Load specific content based on section
    if (sectionName === 'courses') {
        renderCourses();
    } else if (sectionName === 'profile') {
        renderProfile();
    }
}

// Render courses in the grid
function renderCourses() {
    const coursesGrid = document.getElementById('courses-grid');
    coursesGrid.innerHTML = '';
    
    coursesData.forEach(course => {
        const courseCard = document.createElement('div');
        courseCard.className = `course-card ${course.completed ? 'completed' : ''}`;
        courseCard.onclick = () => showCourseDetail(course.id);
        
        const actionButton = currentUser 
            ? `<button class="btn ${course.completed ? 'btn-success' : 'btn-primary'}" 
                      onclick="event.stopPropagation(); ${course.completed ? '' : `toggleCompletion(${course.id})`}" 
                      ${course.completed ? 'disabled' : ''}>
                  ${course.completed ? '✅ Completed' : 'Take Quiz'}
               </button>`
            : `<button class="btn btn-primary" onclick="event.stopPropagation(); showLoginModal()">
                  Login to Enroll
               </button>`;
        
        courseCard.innerHTML = `
            ${course.completed && currentUser ? '<div class="completion-badge">✅ Completed</div>' : ''}
            <h3 class="course-title">${course.title}</h3>
            <p class="course-description">${course.description}</p>
            <div class="course-meta">
                <span class="course-duration">📅 ${course.duration}</span>
                <span class="course-level">📊 ${course.level}</span>
            </div>
            ${actionButton}
            ${!currentUser ? '<p style="text-align: center; color: #666; margin-top: 1rem; font-size: 0.9rem;">🔒 Login required to access course content</p>' : ''}
        `;
        
        coursesGrid.appendChild(courseCard);
    });
}

// Show course detail
async function showCourseDetail(courseId) {
    // Check if user is logged in
    if (!currentUser) {
        showLoginModal();
        return;
    }

    try {
        // Fetch detailed course data from API
        const response = await apiService.getCourseDetails(courseId);
        const course = response.course;
        
        if (!course) return;
    
    const courseDetail = document.getElementById('course-detail');
    courseDetail.innerHTML = `
        <button class="btn btn-secondary back-btn" onclick="showSection('courses')">
            ← Back to Courses
        </button>
        <h2>${course.title}</h2>
        <p>${course.description}</p>
        <div class="course-meta">
            <span>📅 Duration: ${course.duration}</span>
            <span>📊 Level: ${course.level}</span>
            <span>📚 Lessons: ${course.lessons.length}</span>
        </div>
        
        <div class="lessons-container">
            <h3>Course Lessons</h3>
            ${course.lessons.map((lesson, index) => `
                <div class="lesson-item">
                    <div class="lesson-header" onclick="showLesson(${courseId}, ${index})">
                        <h4>${lesson.title}</h4>
                        <span class="lesson-toggle">▶</span>
                    </div>
                    <p class="lesson-overview">${lesson.content.overview}</p>
                </div>
            `).join('')}
        </div>
        
        <div class="course-actions">
            ${course.completed 
                ? '<button class="btn btn-success" disabled>✅ Course Completed</button>' 
                : '<button class="btn btn-primary" onclick="toggleCompletion(' + courseId + ')">Take Quiz to Complete Course</button>'
            }
        </div>
    `;
    
    // Switch to the course detail section
    showSection('course-detail');
    
    } catch (error) {
        console.error('Failed to load course details:', error);
        showCompletionFeedback('Failed to load course details. Please try again.');
    }
}

// Show lesson content in modal
async function showLesson(courseId, lessonIndex) {
    if (!currentUser) {
        showLoginModal();
        return;
    }

    try {
        const course = coursesData.find(c => c.id === courseId);
        if (!course || !course.lessons[lessonIndex]) {
            showCompletionFeedback('Lesson not found.');
            return;
        }
        
        const lesson = course.lessons[lessonIndex];
        
        document.getElementById('lesson-title').textContent = lesson.title;
        document.getElementById('lesson-content').innerHTML = lesson.content || lesson.overview;
        document.getElementById('lesson-modal').style.display = 'flex';
        
        // Mark lesson as viewed/completed
        if (lesson.id) {
            await apiService.markLessonComplete(lesson.id);
        }
    } catch (error) {
        console.error('Failed to load lesson:', error);
        showCompletionFeedback('Failed to load lesson content.');
    }
}

// Render user profile
function renderProfile() {
    if (!currentUser) {
        showLoginModal();
        return;
    }
    
    const profileContent = document.getElementById('profile-content');
    const completedCourses = coursesData.filter(course => course.completed);
    const totalCourses = coursesData.length;
    const completionRate = Math.round((completedCourses.length / totalCourses) * 100);
    
    profileContent.innerHTML = `
        <div class="profile-header">
            <div class="profile-avatar">
                <div class="avatar-circle">
                    ${currentUser.name.charAt(0).toUpperCase()}
                </div>
            </div>
            <div class="profile-info">
                <h2>${currentUser.name}</h2>
                <p>${currentUser.email}</p>
                <p>Member since: ${new Date(currentUser.registeredAt).toLocaleDateString()}</p>
            </div>
        </div>
        
        <div class="progress-section">
            <h3>Learning Progress</h3>
            <div class="progress-stats">
                <div class="stat-item">
                    <div class="stat-number">${completedCourses.length}</div>
                    <div class="stat-label">Courses Completed</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">${totalCourses}</div>
                    <div class="stat-label">Total Courses</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">${completionRate}%</div>
                    <div class="stat-label">Completion Rate</div>
                </div>
            </div>
            
            <div class="progress-bar-container">
                <div class="progress-bar">
                    <div class="progress-fill" style="width: ${completionRate}%"></div>
                </div>
                <span class="progress-text">${completionRate}% Complete</span>
            </div>
        </div>
        
        <div class="completed-courses-section">
            <h3>Completed Courses</h3>
            ${completedCourses.length > 0 ? `
                <div class="completed-courses-grid">
                    ${completedCourses.map(course => `
                        <div class="completed-course-card">
                            <h4>${course.title}</h4>
                            <p>${course.description}</p>
                            <span class="completion-badge">✅ Completed</span>
                        </div>
                    `).join('')}
                </div>
            ` : `
                <p class="no-courses">No courses completed yet. Start learning to see your progress here!</p>
            `}
        </div>
        
        <div class="profile-actions">
            <button class="btn btn-secondary" onclick="logout(); showSection('courses');">Logout</button>
        </div>
    `;
}

// Initialize the app
function initApp() {
    // Show courses section by default
    showSection('courses');
    
    // Load user if logged in
    loadCurrentUser();
}

// Toggle course completion - now requires quiz completion
async function toggleCompletion(courseId) {
    const course = coursesData.find(c => c.id === courseId);
    if (course && !course.completed) {
        // Check if course has a quiz
        if (course.quiz) {
            // Start the quiz instead of directly completing
            startQuiz(courseId);
        } else {
            // No quiz available, complete directly (for courses without quizzes)
            try {
                await saveCourseProgress(courseId, true);
                course.completed = true;
                
                // Show completion animation/feedback
                showCompletionFeedback(course.title);
                
                // Re-render courses if we're on courses page
                const coursesSection = document.getElementById('courses-section');
                if (coursesSection.classList.contains('active')) {
                    renderCourses();
                }
                
                // Update profile if we're on profile page
                const profileSection = document.getElementById('profile-section');
                if (profileSection.classList.contains('active')) {
                    renderProfile();
                }
            } catch (error) {
                console.error('Failed to save course completion:', error);
                alert('Failed to save progress. Please try again.');
            }
        }
    }
}

// Show completion feedback
function showCompletionFeedback(courseTitle) {
    // Create and show a temporary success message
    const feedback = document.createElement('div');
    feedback.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 1rem 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        z-index: 1000;
        font-weight: 600;
        animation: slideIn 0.3s ease-out;
    `;
    
    feedback.textContent = typeof courseTitle === 'string' 
        ? `🎉 Congratulations! You completed "${courseTitle}"!` 
        : courseTitle;
    
    document.body.appendChild(feedback);
    
    // Remove after 4 seconds
    setTimeout(() => {
        feedback.style.animation = 'slideOut 0.3s ease-in';
        setTimeout(() => {
            document.body.removeChild(feedback);
        }, 300);
    }, 4000);
}

// Form handlers setup
function setupFormHandlers() {
    // Login form handler
    document.getElementById('login-form').addEventListener('submit', async function(e) {
        e.preventDefault();
        
        const email = document.getElementById('login-email').value;
        const password = document.getElementById('login-password').value;
        
        try {
            await login(email, password);
            closeModal('login-modal');
            showCompletionFeedback(`Welcome back, ${currentUser.name}!`);
            
            // Refresh the current view after login
            const currentSection = document.querySelector('.section.active')?.id;
            if (currentSection === 'courses-section') {
                renderCourses();
            }
            
            // Clear form
            this.reset();
        } catch (error) {
            alert(error.message);
        }
    });
    
    // Registration form handler
    document.getElementById('register-form').addEventListener('submit', async function(e) {
        e.preventDefault();
        
        const name = document.getElementById('register-name').value;
        const email = document.getElementById('register-email').value;
        const password = document.getElementById('register-password').value;
        const confirmPassword = document.getElementById('register-confirm').value;
        
        // Validate password confirmation
        if (password !== confirmPassword) {
            alert('Passwords do not match!');
            return;
        }
        
        try {
            await register(name, email, password);
            closeModal('register-modal');
            showCompletionFeedback(`Welcome to EasyLearn, ${name}!`);
            
            // Clear form
            this.reset();
        } catch (error) {
            alert(error.message);
        }
    });
    
    // Close modal when clicking outside
    window.addEventListener('click', function(event) {
        const modals = document.querySelectorAll('.modal');
        modals.forEach(modal => {
            if (event.target === modal) {
                modal.style.display = 'none';
            }
        });
    });
}

// Quiz functionality
let currentQuiz = null;
let currentQuestionIndex = 0;
let userAnswers = [];
let quizScore = 0;

// Start a quiz for a specific course
function startQuiz(courseId) {
    const course = coursesData.find(c => c.id === courseId);
    if (!course || !course.quiz) {
        alert('Quiz not available for this course.');
        return;
    }
    
    currentQuiz = course.quiz;
    currentQuestionIndex = 0;
    userAnswers = new Array(currentQuiz.questions.length).fill(null);
    quizScore = 0;
    
    document.getElementById('quiz-title').textContent = `${course.title} - Quiz`;
    document.getElementById('quiz-modal').style.display = 'flex';
    
    displayQuestion();
    updateQuizProgress();
}

// Display current question
function displayQuestion() {
    if (!currentQuiz) return;
    
    const question = currentQuiz.questions[currentQuestionIndex];
    const questionElement = document.getElementById('quiz-question');
    const optionsElement = document.getElementById('quiz-options');
    
    questionElement.textContent = question.question;
    optionsElement.innerHTML = '';
    
    // Create option buttons
    question.options.forEach((option, index) => {
        const optionButton = document.createElement('button');
        optionButton.className = 'quiz-option';
        optionButton.onclick = () => selectOption(index);
        
        optionButton.innerHTML = `
            <div class="option-indicator">${String.fromCharCode(65 + index)}</div>
            <span>${option}</span>
        `;
        
        // Mark as selected if user already answered
        if (userAnswers[currentQuestionIndex] === index) {
            optionButton.classList.add('selected');
        }
        
        optionsElement.appendChild(optionButton);
    });
    
    // Update navigation buttons
    updateQuizNavigation();
    
    // Hide explanation area
    const explanationArea = document.querySelector('.explanation-area');
    if (explanationArea) {
        explanationArea.style.display = 'none';
    }
}

// Select an option
function selectOption(optionIndex) {
    userAnswers[currentQuestionIndex] = optionIndex;
    
    // Update visual selection
    const options = document.querySelectorAll('.quiz-option');
    options.forEach((option, index) => {
        option.classList.remove('selected');
        if (index === optionIndex) {
            option.classList.add('selected');
        }
    });
    
    updateQuizNavigation();
}

// Navigate between questions
function navigateQuestion(direction) {
    const newIndex = currentQuestionIndex + direction;
    
    if (newIndex >= 0 && newIndex < currentQuiz.questions.length) {
        currentQuestionIndex = newIndex;
        displayQuestion();
        updateQuizProgress();
    }
}

// Update quiz progress
function updateQuizProgress() {
    const totalQuestions = currentQuiz.questions.length;
    const progressPercent = ((currentQuestionIndex + 1) / totalQuestions) * 100;
    
    document.getElementById('quiz-progress-fill').style.width = `${progressPercent}%`;
    document.getElementById('quiz-progress-text').textContent = 
        `Question ${currentQuestionIndex + 1} of ${totalQuestions}`;
}

// Update navigation buttons
function updateQuizNavigation() {
    const prevButton = document.getElementById('prev-question');
    const nextButton = document.getElementById('next-question');
    const submitButton = document.getElementById('submit-quiz');
    
    // Previous button
    prevButton.disabled = currentQuestionIndex === 0;
    
    // Next/Submit button logic
    const isLastQuestion = currentQuestionIndex === currentQuiz.questions.length - 1;
    const hasAnswered = userAnswers[currentQuestionIndex] !== null;
    
    if (isLastQuestion) {
        nextButton.style.display = 'none';
        submitButton.style.display = hasAnswered ? 'inline-block' : 'none';
    } else {
        nextButton.style.display = hasAnswered ? 'inline-block' : 'none';
        submitButton.style.display = 'none';
        nextButton.disabled = !hasAnswered;
    }
}

// Submit quiz and show results
async function submitQuiz() {
    // Check if all questions are answered
    const unansweredQuestions = userAnswers.filter(answer => answer === null).length;
    if (unansweredQuestions > 0) {
        alert(`Please answer all questions before submitting. ${unansweredQuestions} questions remaining.`);
        return;
    }
    
    try {
        // Get course ID from current quiz
        const course = coursesData.find(c => c.quiz === currentQuiz);
        if (!course) {
            throw new Error('Course not found');
        }
        
        // Submit quiz to API
        const response = await apiService.submitQuiz(course.id, userAnswers);
        
        // Update local quiz score with server response
        quizScore = response.correctAnswers;
        
        // Show results
        showQuizResults(response);
        
    } catch (error) {
        console.error('Failed to submit quiz:', error);
        alert('Failed to submit quiz. Please try again.');
    }
}

// Show quiz results
function showQuizResults(apiResponse = null) {
    const totalQuestions = currentQuiz.questions.length;
    const percentage = apiResponse ? apiResponse.score : Math.round((quizScore / totalQuestions) * 100);
    
    // Determine performance level
    let performanceClass = 'poor';
    let feedback = 'Keep studying and try again!';
    
    if (percentage >= 90) {
        performanceClass = 'excellent';
        feedback = 'Excellent work! You have mastered this material.';
    } else if (percentage >= 75) {
        performanceClass = 'good';
        feedback = 'Good job! You have a solid understanding.';
    } else if (percentage >= 60) {
        performanceClass = 'needs-improvement';
        feedback = 'Not bad, but there\'s room for improvement.';
    }
    
    const quizContent = document.querySelector('.quiz-content-area');
    quizContent.innerHTML = `
        <div class="quiz-results">
            <div class="quiz-score ${performanceClass}">
                ${percentage}%
            </div>
            <div class="quiz-feedback">
                ${feedback}
            </div>
            <p>You scored ${quizScore} out of ${totalQuestions} questions correctly.</p>
            <div style="margin-top: 2rem;">
                <button class="btn btn-primary" onclick="reviewAnswers()">Review Answers</button>
                <button class="btn btn-success" onclick="completeQuiz()">Continue</button>
            </div>
        </div>
    `;
    
    // Hide navigation buttons
    document.querySelector('.quiz-navigation').style.display = 'none';
}

// Review quiz answers
function reviewAnswers() {
    currentQuestionIndex = 0;
    displayQuestionReview();
}

// Display question in review mode
function displayQuestionReview() {
    const question = currentQuiz.questions[currentQuestionIndex];
    const userAnswer = userAnswers[currentQuestionIndex];
    const correctAnswer = question.correct;
    const isCorrect = userAnswer === correctAnswer;
    
    const questionElement = document.getElementById('quiz-question');
    const optionsElement = document.getElementById('quiz-options');
    
    questionElement.textContent = question.question;
    optionsElement.innerHTML = '';
    
    // Create option buttons in review mode
    question.options.forEach((option, index) => {
        const optionButton = document.createElement('div');
        optionButton.className = 'quiz-option';
        
        // Add appropriate classes for review
        if (index === correctAnswer) {
            optionButton.classList.add('correct');
        }
        if (index === userAnswer && !isCorrect) {
            optionButton.classList.add('incorrect');
        }
        if (index === userAnswer) {
            optionButton.classList.add('selected');
        }
        
        optionButton.innerHTML = `
            <div class="option-indicator">${String.fromCharCode(65 + index)}</div>
            <span>${option}</span>
        `;
        
        optionsElement.appendChild(optionButton);
    });
    
    // Show explanation
    showExplanation(question.explanation, isCorrect);
    
    // Update navigation for review mode
    updateReviewNavigation();
}

// Show explanation for current question
function showExplanation(explanation, isCorrect) {
    const questionContainer = document.querySelector('.question-container');
    
    // Remove existing explanation
    const existingExplanation = questionContainer.querySelector('.explanation-area');
    if (existingExplanation) {
        existingExplanation.remove();
    }
    
    // Add new explanation
    const explanationDiv = document.createElement('div');
    explanationDiv.className = 'explanation-area show';
    explanationDiv.innerHTML = `
        <h4>${isCorrect ? '✅ Correct!' : '❌ Incorrect'}</h4>
        <p>${explanation}</p>
    `;
    
    questionContainer.appendChild(explanationDiv);
}

// Update navigation for review mode
function updateReviewNavigation() {
    const prevButton = document.getElementById('prev-question');
    const nextButton = document.getElementById('next-question');
    const submitButton = document.getElementById('submit-quiz');
    
    // Show navigation again
    document.querySelector('.quiz-navigation').style.display = 'flex';
    
    prevButton.disabled = currentQuestionIndex === 0;
    prevButton.style.display = 'inline-block';
    
    const isLastQuestion = currentQuestionIndex === currentQuiz.questions.length - 1;
    if (isLastQuestion) {
        nextButton.style.display = 'none';
        submitButton.style.display = 'inline-block';
        submitButton.textContent = 'Finish Review';
        submitButton.onclick = completeQuiz;
    } else {
        nextButton.style.display = 'inline-block';
        nextButton.disabled = false;
        nextButton.textContent = 'Next Question';
        submitButton.style.display = 'none';
    }
}

// Complete quiz and proceed
function completeQuiz() {
    // Check if quiz passed (minimum 60%)
    const totalQuestions = currentQuiz.questions.length;
    const percentage = Math.round((quizScore / totalQuestions) * 100);
    
    closeModal('quiz-modal');
    
    if (percentage >= 60) {
        // Show survey
        showSurvey();
    } else {
        // Show retry option
        const retry = confirm('You need at least 60% to pass. Would you like to retry the quiz?');
        if (retry) {
            // Reset and restart quiz
            const courseId = coursesData.find(c => c.quiz === currentQuiz).id;
            startQuiz(courseId);
        }
    }
}

// Survey functionality
function showSurvey() {
    document.getElementById('survey-modal').style.display = 'flex';
}

// Submit survey feedback
async function submitSurvey() {
    const rating = document.querySelector('input[name="rating"]:checked')?.value;
    const liked = document.getElementById('course-liked').value;
    const improvement = document.getElementById('course-improvement').value;
    const recommend = document.querySelector('input[name="recommend"]:checked')?.value;
    
    if (!rating) {
        alert('Please provide a rating before submitting.');
        return;
    }
    
    try {
        // Get course ID
        const course = coursesData.find(c => c.quiz === currentQuiz);
        if (!course) {
            throw new Error('Course not found');
        }
        
        // Submit survey to API
        const surveyData = {
            rating: parseInt(rating),
            liked: liked.trim(),
            improvement: improvement.trim(),
            recommend: recommend === 'yes'
        };
        
        await apiService.submitSurvey(course.id, surveyData);
        
        closeModal('survey-modal');
        showCompletionFeedback('Thank you for your feedback! Course completed successfully.');
        
        // Refresh course data to show completion status
        await loadCoursesData();
        renderCourses();
        renderProfile();
        
    } catch (error) {
        console.error('Failed to submit survey:', error);
        alert('Failed to submit survey. Please try again.');
    }
    
    // Clear survey form
    document.querySelectorAll('input[name="rating"]').forEach(input => input.checked = false);
    document.querySelectorAll('input[name="recommend"]').forEach(input => input.checked = false);
    document.getElementById('course-liked').value = '';
    document.getElementById('course-improvement').value = '';
}

// Skip survey
async function skipSurvey() {
    closeModal('survey-modal');
    showCompletionFeedback('Course completed successfully!');
    
    // Mark course as completed
    const course = coursesData.find(c => c.quiz === currentQuiz);
    if (course) {
        try {
            await saveCourseProgress(course.id, true);
            course.completed = true;
            renderCourses();
            renderProfile();
        } catch (error) {
            console.error('Failed to save course completion:', error);
            alert('Failed to save progress. Please try again.');
        }
    }
}

// Initialize app when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
    initApp();
    setupFormHandlers();
    setupMobileMenuHandlers();
    loadCurrentUser();
});

// Utility function to reset all course completions (for testing purposes)
async function resetAllCourses() {
    try {
        // Reset each course completion via API
        const resetPromises = coursesData.map(course => {
            course.completed = false;
            return saveCourseProgress(course.id, false);
        });
        
        await Promise.all(resetPromises);
        renderCourses();
        renderProfile();
        console.log('All courses reset to incomplete state');
    } catch (error) {
        console.error('Failed to reset course completions:', error);
        alert('Failed to reset course completions. Please try again.');
    }
}

// Mobile menu functionality
function toggleMobileMenu() {
    const nav = document.getElementById('main-nav');
    const toggle = document.getElementById('mobile-menu-toggle');
    
    nav.classList.toggle('active');
    toggle.classList.toggle('active');
    
    // Prevent body scroll when menu is open
    if (nav.classList.contains('active')) {
        document.body.style.overflow = 'hidden';
    } else {
        document.body.style.overflow = '';
    }
}

function closeMobileMenu() {
    const nav = document.getElementById('main-nav');
    const toggle = document.getElementById('mobile-menu-toggle');
    
    nav.classList.remove('active');
    toggle.classList.remove('active');
    document.body.style.overflow = '';
}

// Close mobile menu when clicking outside
function setupMobileMenuHandlers() {
    document.addEventListener('click', (e) => {
        const nav = document.getElementById('main-nav');
        const toggle = document.getElementById('mobile-menu-toggle');
        
        if (nav.classList.contains('active') && 
            !nav.contains(e.target) && 
            !toggle.contains(e.target)) {
            closeMobileMenu();
        }
    });
    
    // Close menu on escape key
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            closeMobileMenu();
        }
    });
    
    // Close menu on window resize to desktop size
    window.addEventListener('resize', () => {
        if (window.innerWidth > 768) {
            closeMobileMenu();
        }
    });
}

// Make reset function available globally for testing
window.resetAllCourses = resetAllCourses;