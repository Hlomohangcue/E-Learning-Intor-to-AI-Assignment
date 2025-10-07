-- Simple Enhanced Course Content (SQL-safe)
-- Update lessons with professional notes

-- Update HTML Basics lesson
UPDATE lessons 
SET content = 'Learn HTML with professional industry standards. This lesson covers semantic HTML5 elements, accessibility best practices, SEO optimization, and modern web standards. Topics include document structure, semantic elements like header, nav, main, section, article, aside, and footer. Learn about ARIA attributes, proper heading hierarchy, and meta tags for SEO. Includes professional code examples and industry best practices for building accessible, search-engine friendly websites.'
WHERE course_id = 1 AND title = 'HTML Basics';

-- Update CSS Styling lesson
UPDATE lessons 
SET content = 'Master CSS with modern layout techniques and professional styling practices. Learn CSS Grid, Flexbox, custom properties (CSS variables), responsive design principles, and CSS methodologies like BEM. Covers modern CSS features including clamp(), calc(), CSS Grid areas, and performance optimization techniques. Includes best practices for maintainable CSS architecture and cross-browser compatibility.'
WHERE course_id = 1 AND title = 'CSS Styling Techniques';

-- Update JavaScript Fundamentals lesson
UPDATE lessons 
SET content = 'Professional JavaScript development covering ES6+ features, asynchronous programming, and modern development practices. Learn about arrow functions, destructuring, async/await, Promises, modules, and functional programming concepts. Includes error handling, debugging techniques, performance optimization, and testing strategies. Covers DOM manipulation, event handling, and API integration with professional code patterns.'
WHERE course_id = 1 AND title = 'JavaScript Fundamentals';

-- Update Building Websites lesson  
UPDATE lessons 
SET content = 'Complete website development workflow from planning to deployment. Learn project architecture, file organization, version control with Git, build tools, and deployment strategies. Covers responsive design implementation, performance optimization, SEO best practices, and accessibility compliance. Includes CI/CD pipelines, testing strategies, and professional development workflows used in the industry.'
WHERE course_id = 1 AND title = 'Building Your First Website';

-- Update Responsive Design lesson
UPDATE lessons 
SET content = 'Advanced responsive design using mobile-first approach, CSS Grid, Flexbox, and modern layout techniques. Learn about viewport units, container queries, responsive images, and typography scaling. Covers cross-device compatibility, performance optimization for mobile devices, and progressive enhancement strategies. Includes best practices for touch interfaces and accessibility across all screen sizes.'
WHERE course_id = 1 AND title = 'Responsive Design Principles';

-- Update Web Development Best Practices lesson
UPDATE lessons 
SET content = 'Industry-standard web development practices including code quality, security, performance optimization, and maintainable architecture. Learn about ESLint, Prettier, testing strategies, CI/CD pipelines, and deployment best practices. Covers security measures like CSP, XSS prevention, input validation, and performance optimization techniques. Includes documentation standards and professional development workflows.'
WHERE course_id = 1 AND title = 'Web Development Best Practices';

-- Update Python Control Flow lesson
UPDATE lessons 
SET content = 'Advanced Python control structures and logic patterns including list comprehensions, generator expressions, context managers, and functional programming. Learn about exception handling, decorators, itertools, and async programming. Covers Pythonic programming principles, SOLID principles application, and professional error handling strategies. Includes advanced iteration patterns and performance optimization techniques.'
WHERE course_id = 2 AND title = 'Control Flow and Logic';

-- Update Python Data Structures lesson
UPDATE lessons 
SET content = 'Comprehensive coverage of Python data structures including built-in types, collections module, and custom implementations. Learn about time complexity, space optimization, and appropriate data structure selection. Covers advanced list operations, dictionary patterns, set operations, and custom data structure implementations. Includes performance analysis and memory optimization techniques for large-scale applications.'
WHERE course_id = 2 AND title = 'Data Structures and Algorithms';

-- Update Python OOP lesson
UPDATE lessons 
SET content = 'Professional object-oriented programming in Python covering SOLID principles, design patterns, metaclasses, and descriptors. Learn about inheritance, composition, mixins, and professional class design. Covers advanced OOP concepts including abstract base classes, protocols, context managers, and method resolution order. Includes industry-standard design patterns and architectural best practices.'
WHERE course_id = 2 AND title = 'Object-Oriented Programming';

-- Update File Handling lesson
UPDATE lessons 
SET content = 'Professional file handling and I/O operations in Python including context managers, binary files, CSV processing, and JSON manipulation. Learn about file system operations, path handling with pathlib, and error handling for I/O operations. Covers data serialization, file compression, and working with different file formats. Includes performance optimization for large file processing and concurrent I/O operations.'
WHERE course_id = 2 AND title = 'File Handling and I/O';

-- Update Python Applications lesson
UPDATE lessons 
SET content = 'Building real-world Python applications including web scraping, API development, automation scripts, and data processing pipelines. Learn about popular Python frameworks, libraries, and tools for different application domains. Covers testing strategies, deployment options, and performance optimization. Includes best practices for code organization, documentation, and maintenance of production Python applications.'
WHERE course_id = 2 AND title = 'Building Python Applications';

-- Update Data Analysis lesson
UPDATE lessons 
SET content = 'Professional data analysis using pandas, NumPy, and statistical libraries. Learn about data cleaning, preprocessing, exploratory data analysis, and statistical testing. Covers advanced pandas operations, data visualization, and analysis workflow automation. Includes handling missing data, outlier detection, feature engineering, and reproducible analysis practices. Professional techniques for large-scale data processing and analysis.'
WHERE course_id = 3 AND title = 'Data Analysis Fundamentals';

-- Update Data Visualization lesson  
UPDATE lessons 
SET content = 'Advanced data visualization using Matplotlib, Seaborn, and Plotly for professional data presentation. Learn about visualization design principles, interactive dashboards, and storytelling with data. Covers statistical plotting, custom visualizations, and publication-ready graphics. Includes best practices for color schemes, accessibility, and effective data communication for business stakeholders.'
WHERE course_id = 3 AND title = 'Data Visualization';

-- Update Machine Learning lesson
UPDATE lessons 
SET content = 'Introduction to machine learning with scikit-learn covering supervised and unsupervised learning algorithms. Learn about data preprocessing, feature selection, model evaluation, and hyperparameter tuning. Covers classification, regression, clustering, and dimensionality reduction techniques. Includes model validation, cross-validation strategies, and professional ML workflow practices used in industry.'
WHERE course_id = 3 AND title = 'Introduction to Machine Learning';

-- Update Deep Learning lesson
UPDATE lessons 
SET content = 'Deep learning fundamentals using TensorFlow and Keras for neural network development. Learn about neural network architectures, training strategies, and optimization techniques. Covers convolutional networks, recurrent networks, and transfer learning. Includes practical applications in image recognition, natural language processing, and professional deep learning development practices.'
WHERE course_id = 3 AND title = 'Deep Learning Basics';

-- Update AI Projects lesson
UPDATE lessons 
SET content = 'End-to-end AI project development from problem definition to deployment. Learn about project planning, data collection, model development, and productionization. Covers MLOps practices, model monitoring, and ethical AI considerations. Includes real-world case studies and industry best practices for building and deploying AI solutions in production environments.'
WHERE course_id = 3 AND title = 'AI Project Development';

-- Update Mobile Development lessons
UPDATE lessons 
SET content = 'Comprehensive mobile app development covering native and cross-platform approaches. Learn about mobile UI/UX design principles, platform-specific guidelines, and performance optimization. Covers development tools, testing strategies, and app store deployment. Includes modern frameworks like React Native, Flutter, and native development best practices for iOS and Android platforms.'
WHERE course_id = 4 AND title = 'Mobile App Basics';

UPDATE lessons 
SET content = 'Advanced mobile development techniques including state management, navigation, device APIs, and offline functionality. Learn about push notifications, location services, camera integration, and native module development. Covers performance optimization, memory management, and debugging strategies. Includes professional mobile architecture patterns and industry best practices.'
WHERE course_id = 4 AND title = 'Advanced Mobile Features';

UPDATE lessons 
SET content = 'Mobile app deployment, distribution, and maintenance covering app store guidelines, beta testing, and continuous deployment. Learn about app signing, security measures, and performance monitoring. Covers user analytics, crash reporting, and update strategies. Includes monetization options, app store optimization, and post-launch maintenance best practices.'
WHERE course_id = 4 AND title = 'Mobile App Deployment';

UPDATE lessons 
SET content = 'Mobile UI/UX design principles and implementation covering responsive design, accessibility, and platform conventions. Learn about material design, human interface guidelines, and cross-platform design strategies. Covers animation, gestures, and user interaction patterns. Includes prototyping tools, user testing, and design system development for mobile applications.'
WHERE course_id = 4 AND title = 'Mobile UI/UX Design';

UPDATE lessons 
SET content = 'Mobile performance optimization and testing strategies including memory management, battery optimization, and network efficiency. Learn about profiling tools, performance metrics, and optimization techniques. Covers automated testing, device testing, and performance monitoring. Includes best practices for scalable mobile architecture and professional testing methodologies.'
WHERE course_id = 4 AND title = 'Mobile Testing and Performance';

-- Update Digital Marketing lessons
UPDATE lessons 
SET content = 'Comprehensive digital marketing strategy covering SEO, SEM, social media marketing, and content marketing. Learn about market research, competitor analysis, and target audience identification. Covers marketing automation, analytics setup, and ROI measurement. Includes modern digital marketing tools, trends, and industry best practices for effective online marketing campaigns.'
WHERE course_id = 5 AND title = 'Digital Marketing Fundamentals';

UPDATE lessons 
SET content = 'Advanced SEO techniques and search engine marketing strategies for improved online visibility. Learn about keyword research, on-page optimization, technical SEO, and link building. Covers local SEO, mobile optimization, and SEO analytics. Includes Google Ads management, conversion tracking, and professional SEO audit techniques used by digital marketing agencies.'
WHERE course_id = 5 AND title = 'SEO and Search Marketing';

UPDATE lessons 
SET content = 'Social media marketing strategy and management across platforms including Facebook, Instagram, Twitter, LinkedIn, and TikTok. Learn about content planning, community management, and social media advertising. Covers influencer marketing, social commerce, and crisis management. Includes analytics and reporting for social media ROI measurement and professional social media tools.'
WHERE course_id = 5 AND title = 'Social Media Marketing';

UPDATE lessons 
SET content = 'Email marketing and marketing automation strategies for customer engagement and retention. Learn about email design, segmentation, personalization, and automation workflows. Covers deliverability optimization, A/B testing, and performance tracking. Includes CRM integration, lead nurturing, and advanced email marketing techniques used in professional marketing campaigns.'
WHERE course_id = 5 AND title = 'Email and Content Marketing';

UPDATE lessons 
SET content = 'Digital marketing analytics and data-driven marketing strategies using Google Analytics, social media insights, and marketing automation platforms. Learn about conversion tracking, attribution modeling, and customer journey analysis. Covers dashboard creation, reporting automation, and ROI calculation. Includes advanced analytics techniques and professional marketing performance measurement.'
WHERE course_id = 5 AND title = 'Marketing Analytics';

-- Display completion message
SELECT 'Enhanced course content has been successfully updated!' as Status;