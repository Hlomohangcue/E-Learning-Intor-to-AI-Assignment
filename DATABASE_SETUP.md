# Database Setup Instructions

## MySQL Database Setup

1. **Ensure MySQL is running** (Service: MySQL84 is already running ✅)

2. **Set MySQL root password in .env file**
   - Open the `.env` file in the project root
   - Update `DB_PASSWORD=` with your MySQL root password
   - The current database name is set to `e_learning`

3. **Create the database and tables**
   ```bash
   # Connect to MySQL (use your actual password)
   mysql -u root -p
   
   # Create the database
   CREATE DATABASE IF NOT EXISTS e_learning;
   USE e_learning;
   
   # Run the schema file
   SOURCE database_schema.sql;
   ```

   Or run it directly:
   ```bash
   mysql -u root -p e_learning < database_schema.sql
   ```

4. **Verify the setup**
   ```bash
   # Check if tables were created
   mysql -u root -p -e "USE e_learning; SHOW TABLES;"
   ```

## Alternative: Run SQL commands manually

If you prefer, you can copy and paste the SQL commands from `database_schema.sql` directly into MySQL Workbench or any MySQL client.

## Current Configuration

- **Database Host**: localhost
- **Database Port**: 3306
- **Database Name**: e_learning
- **Database User**: root
- **Server Port**: 3000
- **Frontend URL**: http://localhost:8000

## Testing the Application

1. Set up the database (above steps)
2. Update the MySQL password in `.env`
3. Start the backend: `node server.js`
4. Open `index.html` in a browser or serve it on port 8000
5. Test login, course registration, quiz completion, and surveys

## API Endpoints Available

- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/profile` - Get user profile (requires auth)
- `GET /api/courses` - Get all courses with lessons
- `GET /api/progress` - Get user progress (requires auth)
- `POST /api/progress` - Save user progress (requires auth)
- `POST /api/quiz/submit` - Submit quiz answers (requires auth)
- `POST /api/survey/submit` - Submit survey responses (requires auth)

All endpoints are fully implemented with proper validation, security, and error handling.