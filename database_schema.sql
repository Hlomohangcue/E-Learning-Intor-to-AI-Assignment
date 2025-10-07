-- EasyLearn Database Schema
-- MySQL Database Setup Script

CREATE DATABASE IF NOT EXISTS easylearn_db;
USE easylearn_db;

-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_email (email)
);

-- Courses table
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    duration VARCHAR(50),
    level ENUM('Beginner', 'Intermediate', 'Advanced') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_level (level)
);

-- Lessons table
CREATE TABLE lessons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    overview TEXT,
    content LONGTEXT,
    order_index INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    INDEX idx_course_order (course_id, order_index)
);

-- Quiz questions table
CREATE TABLE quiz_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    question TEXT NOT NULL,
    option_a VARCHAR(500) NOT NULL,
    option_b VARCHAR(500) NOT NULL,
    option_c VARCHAR(500) NOT NULL,
    option_d VARCHAR(500) NOT NULL,
    correct_answer INT NOT NULL CHECK (correct_answer IN (0, 1, 2, 3)),
    explanation TEXT,
    order_index INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    INDEX idx_course_order (course_id, order_index)
);

-- User progress table
CREATE TABLE user_progress (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    lesson_id INT NULL,
    completed BOOLEAN DEFAULT FALSE,
    completed_at TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
    UNIQUE KEY unique_user_lesson (user_id, course_id, lesson_id),
    INDEX idx_user_course (user_id, course_id),
    INDEX idx_completed (completed)
);

-- Quiz attempts table
CREATE TABLE quiz_attempts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    score INT NOT NULL,
    answers JSON NOT NULL,
    passed BOOLEAN DEFAULT FALSE,
    attempted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    INDEX idx_user_course (user_id, course_id),
    INDEX idx_passed (passed)
);

-- Survey responses table
CREATE TABLE survey_responses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    liked TEXT,
    improvement TEXT,
    recommend BOOLEAN DEFAULT FALSE,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    UNIQUE KEY unique_user_survey (user_id, course_id),
    INDEX idx_rating (rating)
);

-- Insert sample courses data
INSERT INTO courses (id, title, description, duration, level) VALUES
(1, 'Introduction to Web Development', 'Learn the fundamentals of HTML, CSS, and JavaScript. Perfect for beginners who want to start their journey in web development.', '4 weeks', 'Beginner'),
(2, 'Python Programming Essentials', 'Master Python programming from basics to advanced concepts. Includes hands-on projects and real-world applications.', '6 weeks', 'Intermediate'),
(3, 'Data Science with AI', 'Explore the exciting world of data science and artificial intelligence. Learn to analyze data and build intelligent systems.', '8 weeks', 'Advanced'),
(4, 'Mobile App Development', 'Build mobile applications for iOS and Android. Learn React Native to develop cross-platform mobile apps.', '6 weeks', 'Intermediate'),
(5, 'Digital Marketing Fundamentals', 'Master the art of digital marketing. Learn SEO, social media marketing, and online advertising strategies.', '5 weeks', 'Beginner');

-- Insert lessons for Course 1: Introduction to Web Development
INSERT INTO lessons (course_id, title, overview, content, order_index) VALUES
(1, 'HTML Basics and Structure', 'Learn the foundation of web development with HTML (HyperText Markup Language). Understand how to structure web pages using semantic elements.', '<h3>What is HTML?</h3><p>HTML is the standard markup language for creating web pages. It describes the structure of a web page using markup tags.</p><h3>Basic HTML Structure</h3><div class="code-example">&lt;!DOCTYPE html&gt;\n&lt;html lang="en"&gt;\n&lt;head&gt;\n    &lt;meta charset="UTF-8"&gt;\n    &lt;title&gt;My First Web Page&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n    &lt;h1&gt;Welcome to HTML&lt;/h1&gt;\n    &lt;p&gt;This is my first paragraph.&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;</div><h3>Common HTML Elements</h3><p>• &lt;h1&gt; to &lt;h6&gt;: Headings<br>• &lt;p&gt;: Paragraphs<br>• &lt;div&gt;: Division/container<br>• &lt;span&gt;: Inline container<br>• &lt;a&gt;: Links<br>• &lt;img&gt;: Images</p><div class="exercise"><h4>Practice Exercise</h4><p>Create a simple HTML page with a heading, two paragraphs, and a link to your favorite website.</p></div>', 1);

-- Insert lessons for Course 2: Python Programming
INSERT INTO lessons (course_id, title, overview, content, order_index) VALUES
(2, 'Python Syntax and Variables', 'Learn Python''s clean syntax and how to work with variables and basic data types.', '<h3>Python Syntax Basics</h3><p>Python is known for its readable and clean syntax. No semicolons needed!</p><h3>Variables and Assignment</h3><div class="code-example"># Variables in Python\nname = "Alice"\nage = 25\nheight = 5.6\nis_student = True\n\n# Print variables\nprint(f"Name: {name}")\nprint(f"Age: {age}")\nprint(f"Height: {height} feet")\nprint(f"Is student: {is_student}")</div><h3>Data Types</h3><p>• <strong>Strings:</strong> Text data in quotes<br>• <strong>Integers:</strong> Whole numbers<br>• <strong>Floats:</strong> Decimal numbers<br>• <strong>Booleans:</strong> True or False<br>• <strong>Lists:</strong> Ordered collections<br>• <strong>Dictionaries:</strong> Key-value pairs</p><div class="exercise"><h4>Practice Exercise</h4><p>Create variables for your personal information and print them using f-strings.</p></div>', 1);

-- Insert lessons for Course 3: Data Science
INSERT INTO lessons (course_id, title, overview, content, order_index) VALUES
(3, 'Introduction to Data Science', 'Get started with data science fundamentals and understand the role of data in making informed decisions.', '<h3>What is Data Science?</h3><p>Data science combines statistical analysis, machine learning, and domain expertise to extract insights from data.</p><h3>The Data Science Process</h3><p>1. <strong>Problem Definition:</strong> Define clear objectives<br>2. <strong>Data Collection:</strong> Gather relevant data<br>3. <strong>Data Cleaning:</strong> Handle missing/incorrect data<br>4. <strong>Exploratory Analysis:</strong> Understand data patterns<br>5. <strong>Modeling:</strong> Apply algorithms and techniques<br>6. <strong>Validation:</strong> Test and validate results<br>7. <strong>Communication:</strong> Present findings</p><div class="exercise"><h4>Practice Exercise</h4><p>Identify a real-world problem that could benefit from data science analysis.</p></div>', 1);

-- Insert lessons for Course 4: Mobile Development
INSERT INTO lessons (course_id, title, overview, content, order_index) VALUES
(4, 'Mobile Development Overview', 'Introduction to mobile app development platforms and choosing the right approach for your project.', '<h3>Mobile Development Approaches</h3><p>• <strong>Native Development:</strong> Platform-specific languages (Swift/Kotlin)<br>• <strong>Cross-Platform:</strong> React Native, Flutter, Xamarin<br>• <strong>Web-Based:</strong> Progressive Web Apps (PWAs)</p><h3>React Native Benefits</h3><p>• Write once, run on both iOS and Android<br>• Use familiar React concepts<br>• Hot reload for faster development<br>• Access to device features<br>• Large community and ecosystem</p><div class="exercise"><h4>Practice Exercise</h4><p>Compare different mobile development approaches and choose the best one for a specific project.</p></div>', 1);

-- Insert lessons for Course 5: Digital Marketing
INSERT INTO lessons (course_id, title, overview, content, order_index) VALUES
(5, 'Digital Marketing Overview', 'Introduction to digital marketing strategies and channels in the modern business landscape.', '<h3>What is Digital Marketing?</h3><p>Digital marketing encompasses all marketing efforts that use electronic devices or the internet to connect with current and prospective customers.</p><h3>Digital Marketing Channels</h3><p>• <strong>Search Engine Marketing:</strong> SEO, PPC<br>• <strong>Social Media Marketing:</strong> Facebook, Instagram, Twitter, LinkedIn<br>• <strong>Email Marketing:</strong> Newsletters, drip campaigns<br>• <strong>Content Marketing:</strong> Blogs, videos, podcasts<br>• <strong>Display Advertising:</strong> Banner ads, retargeting<br>• <strong>Influencer Marketing:</strong> Partnerships with content creators</p><div class="exercise"><h4>Practice Exercise</h4><p>Analyze a brand you love and identify which digital marketing channels they use effectively.</p></div>', 1);

-- Insert quiz questions for Course 1: Web Development
INSERT INTO quiz_questions (course_id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index) VALUES
(1, 'What does HTML stand for?', 'Hyper Text Markup Language', 'High Tech Modern Language', 'Home Tool Markup Language', 'Hyperlink Text Markup Language', 0, 'HTML stands for Hyper Text Markup Language, which is the standard markup language for creating web pages.', 1),
(1, 'Which HTML element is used for the largest heading?', '<header>', '<h6>', '<h1>', '<heading>', 2, 'The <h1> element represents the largest heading in HTML, with <h6> being the smallest.', 2),
(1, 'What is the correct HTML element for inserting a line break?', '<break>', '<br>', '<lb>', '<newline>', 1, 'The <br> element represents a line break in HTML and is a self-closing tag.', 3),
(1, 'Which attribute specifies the URL of the page the link goes to?', 'src', 'link', 'href', 'url', 2, 'The ''href'' attribute specifies the URL of the page the link goes to in anchor (<a>) tags.', 4),
(1, 'What is the correct HTML for creating a hyperlink?', '<a url=''http://example.com''>Example</a>', '<link href=''http://example.com''>Example</link>', '<a href=''http://example.com''>Example</a>', '<hyperlink>http://example.com</hyperlink>', 2, 'The correct syntax for creating a hyperlink is <a href=''URL''>Link Text</a>.', 5),
(1, 'Which HTML element defines the document type?', '<!DOCTYPE html>', '<doctype>', '<document>', '<html>', 0, 'The <!DOCTYPE html> declaration defines that this document is an HTML5 document.', 6),
(1, 'What is the correct HTML element for inserting an image?', '<image>', '<img>', '<pic>', '<photo>', 1, 'The <img> element is used to insert images in HTML and is a self-closing tag.', 7),
(1, 'Which HTML attribute is used to define inline styles?', 'class', 'style', 'styles', 'css', 1, 'The ''style'' attribute allows you to apply CSS styles directly to an HTML element.', 8),
(1, 'What is the correct HTML for creating an unordered list?', '<list>', '<ol>', '<ul>', '<unordered>', 2, 'The <ul> element creates an unordered (bulleted) list in HTML.', 9),
(1, 'Which HTML element is used to define important text?', '<important>', '<strong>', '<bold>', '<em>', 1, 'The <strong> element defines text with strong importance, typically displayed in bold.', 10);

-- Insert quiz questions for Course 2: Python Programming
INSERT INTO quiz_questions (course_id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index) VALUES
(2, 'What is the correct way to create a variable in Python?', 'var name = ''John''', 'name = ''John''', 'string name = ''John''', 'create name = ''John''', 1, 'Python uses simple assignment syntax without type declarations: variable_name = value', 1),
(2, 'Which of the following is a mutable data type in Python?', 'String', 'Tuple', 'List', 'Integer', 2, 'Lists are mutable, meaning their contents can be changed after creation. Strings, tuples, and integers are immutable.', 2),
(2, 'What does the ''len()'' function return?', 'The type of an object', 'The length of an object', 'The value of an object', 'The memory address', 1, 'The len() function returns the number of items in an object like a string, list, or dictionary.', 3),
(2, 'Which keyword is used to create a function in Python?', 'function', 'def', 'create', 'func', 1, 'The ''def'' keyword is used to define functions in Python.', 4),
(2, 'What is the correct way to handle exceptions in Python?', 'try-catch', 'try-except', 'catch-throw', 'handle-error', 1, 'Python uses try-except blocks for exception handling, not try-catch like some other languages.', 5),
(2, 'Which method adds an item to the end of a list?', 'add()', 'append()', 'insert()', 'extend()', 1, 'The append() method adds a single item to the end of a list.', 6),
(2, 'What is list comprehension?', 'A way to compress lists', 'A concise way to create lists', 'A method to sort lists', 'A way to delete lists', 1, 'List comprehension provides a concise way to create lists using a single line of code with optional conditions.', 7),
(2, 'What does the ''__init__'' method do in a class?', 'Deletes the object', 'Initializes the object', 'Copies the object', 'Prints the object', 1, 'The __init__ method is the constructor that initializes a new object when it''s created.', 8),
(2, 'Which operator is used for floor division in Python?', '/', '//', '%', '**', 1, 'The // operator performs floor division, returning the integer part of the division result.', 9),
(2, 'Which statement is used to exit a loop prematurely?', 'exit', 'break', 'stop', 'return', 1, 'The ''break'' statement is used to exit a loop before it has completed all iterations.', 10);

-- Continue with quiz questions for remaining courses...
-- (Similar pattern for courses 3, 4, and 5)

-- Insert quiz questions for Course 3: Data Science
INSERT INTO quiz_questions (course_id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index) VALUES
(3, 'What is the primary goal of data science?', 'To create websites', 'To extract insights from data', 'To design databases', 'To write code', 1, 'Data science aims to extract meaningful insights and knowledge from data to help make informed decisions.', 1),
(3, 'Which programming language is most commonly used in data science?', 'Java', 'C++', 'Python', 'PHP', 2, 'Python is widely used in data science due to its extensive libraries like pandas, numpy, and scikit-learn.', 2),
(3, 'What is machine learning?', 'A type of computer', 'A subset of AI that learns patterns from data', 'A programming language', 'A database system', 1, 'Machine learning is a subset of artificial intelligence that enables systems to learn and improve from data without being explicitly programmed.', 3),
(3, 'What does EDA stand for in data science?', 'Enhanced Data Analysis', 'Exploratory Data Analysis', 'Expert Data Algorithm', 'Electronic Data Archive', 1, 'EDA (Exploratory Data Analysis) is the process of analyzing and investigating data to discover patterns and insights.', 4),
(3, 'Which of these is NOT a common data visualization tool?', 'Matplotlib', 'Seaborn', 'Tableau', 'MySQL', 3, 'MySQL is a database management system, not a data visualization tool. The others are popular visualization libraries/tools.', 5),
(3, 'What is the purpose of data cleaning?', 'To delete all data', 'To remove errors and inconsistencies', 'To encrypt data', 'To compress data', 1, 'Data cleaning involves identifying and correcting errors, handling missing values, and ensuring data quality for analysis.', 6),
(3, 'What is a neural network?', 'A type of database', 'A network of computers', 'A computational model inspired by the brain', 'An internet protocol', 2, 'A neural network is a computational model inspired by the structure and function of biological neural networks in the brain.', 7),
(3, 'What does AI stand for?', 'Automated Intelligence', 'Artificial Intelligence', 'Advanced Integration', 'Algorithmic Innovation', 1, 'AI stands for Artificial Intelligence, which refers to computer systems that can perform tasks typically requiring human intelligence.', 8),
(3, 'Which type of learning uses labeled training data?', 'Unsupervised learning', 'Supervised learning', 'Reinforcement learning', 'Deep learning', 1, 'Supervised learning uses labeled training data where the correct answers are provided to train the model.', 9),
(3, 'What is Big Data characterized by?', 'Only volume', 'Volume, velocity, and variety', 'Only velocity', 'Only variety', 1, 'Big Data is characterized by the ''3 Vs'': Volume (large amounts), Velocity (high speed), and Variety (different types of data).', 10);

-- Quiz questions for Course 4: Mobile App Development  
INSERT INTO quiz_questions (course_id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index) VALUES
(4, 'What does React Native allow you to do?', 'Build web apps only', 'Build mobile apps for iOS and Android', 'Build desktop apps only', 'Build games only', 1, 'React Native allows you to build mobile applications for both iOS and Android using JavaScript and React.', 1),
(4, 'Which component is used for scrollable content in React Native?', 'View', 'ScrollView', 'FlatList', 'Both ScrollView and FlatList', 3, 'Both ScrollView and FlatList can be used for scrollable content, with FlatList being more efficient for large lists.', 2),
(4, 'What is the correct way to style components in React Native?', 'CSS files', 'StyleSheet.create()', 'Inline styles only', 'SCSS', 1, 'React Native uses StyleSheet.create() to define styles, which provides optimization and validation benefits.', 3),
(4, 'Which hook is used to manage state in React Native functional components?', 'useEffect', 'useState', 'useContext', 'useReducer', 1, 'useState is the primary hook for managing local state in functional components.', 4),
(4, 'What is the purpose of navigation in mobile apps?', 'To style components', 'To move between screens', 'To store data', 'To handle gestures', 1, 'Navigation allows users to move between different screens or sections of a mobile application.', 5),
(4, 'Which method is used to make API calls in React Native?', 'fetch()', 'axios', 'Both fetch() and axios', 'XMLHttpRequest', 2, 'Both fetch() (built-in) and axios (third-party library) are commonly used for API calls in React Native.', 6),
(4, 'What is the difference between iOS and Android development approaches?', 'No difference', 'Different programming languages and design guidelines', 'Only language difference', 'Only design difference', 1, 'iOS and Android have different programming languages, design guidelines, and platform-specific features.', 7),
(4, 'Which file extension is used for React Native components?', '.js or .jsx', '.rn', '.react', '.native', 0, 'React Native components typically use .js or .jsx file extensions, similar to React web components.', 8),
(4, 'What is the purpose of testing in mobile app development?', 'To slow down development', 'To ensure app quality and functionality', 'To increase app size', 'To complicate the code', 1, 'Testing ensures the app works correctly, performs well, and provides a good user experience.', 9),
(4, 'Which stores are used to distribute mobile apps?', 'Only Google Play Store', 'Only Apple App Store', 'Google Play Store and Apple App Store', 'Only third-party stores', 2, 'The two main app stores are Google Play Store for Android apps and Apple App Store for iOS apps.', 10);

-- Quiz questions for Course 5: Digital Marketing
INSERT INTO quiz_questions (course_id, question, option_a, option_b, option_c, option_d, correct_answer, explanation, order_index) VALUES
(5, 'What is digital marketing?', 'Only social media marketing', 'Marketing using electronic devices and internet', 'Only email marketing', 'Only website creation', 1, 'Digital marketing encompasses all marketing efforts using electronic devices or the internet to connect with customers.', 1),
(5, 'What does SEO stand for?', 'Social Engine Optimization', 'Search Engine Optimization', 'Site Engine Operation', 'Search Engine Operation', 1, 'SEO stands for Search Engine Optimization, the practice of optimizing websites to rank higher in search results.', 2),
(5, 'Which metric measures the percentage of people who clicked on your ad?', 'CTR (Click-Through Rate)', 'CPC (Cost Per Click)', 'CPM (Cost Per Mille)', 'CPA (Cost Per Action)', 0, 'CTR (Click-Through Rate) measures the percentage of people who clicked on your ad after seeing it.', 3),
(5, 'What is the primary goal of content marketing?', 'Direct sales', 'Provide value and build relationships', 'Increase website traffic only', 'Generate leads only', 1, 'Content marketing focuses on providing valuable content to build relationships and establish authority with your audience.', 4),
(5, 'Which platform is best for B2B marketing?', 'TikTok', 'Instagram', 'LinkedIn', 'Snapchat', 2, 'LinkedIn is the primary professional networking platform, making it ideal for B2B marketing.', 5),
(5, 'What is A/B testing?', 'Testing two different versions to see which performs better', 'Testing on mobile vs desktop', 'Testing in different countries', 'Testing at different times', 0, 'A/B testing involves comparing two versions of something to determine which performs better.', 6),
(5, 'What does PPC stand for?', 'Pay Per Customer', 'Pay Per Click', 'Price Per Click', 'Profit Per Click', 1, 'PPC stands for Pay Per Click, where advertisers pay when someone clicks on their ad.', 7),
(5, 'Which is NOT a key component of email marketing?', 'Subject line', 'Call-to-action', 'Video content', 'Sender name', 2, 'While video can be included in emails, it''s not a key component. Subject line, CTA, and sender name are essential elements.', 8),
(5, 'What is the marketing funnel?', 'A tool for email marketing', 'The customer journey from awareness to purchase', 'A social media strategy', 'A type of advertisement', 1, 'The marketing funnel represents the customer journey from initial awareness to final purchase and beyond.', 9),
(5, 'What is the primary purpose of Google Analytics?', 'To create advertisements', 'To track and analyze website traffic', 'To design websites', 'To send emails', 1, 'Google Analytics tracks and analyzes website traffic, user behavior, and marketing performance.', 10);

-- Create indexes for better performance
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_course_level ON courses(level);
CREATE INDEX idx_lesson_course_order ON lessons(course_id, order_index);
CREATE INDEX idx_quiz_course_order ON quiz_questions(course_id, order_index);
CREATE INDEX idx_progress_user_course ON user_progress(user_id, course_id);
CREATE INDEX idx_quiz_attempts_user_course ON quiz_attempts(user_id, course_id);
CREATE INDEX idx_survey_user_course ON survey_responses(user_id, course_id);