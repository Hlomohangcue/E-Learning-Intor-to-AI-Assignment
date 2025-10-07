# 🚀 Vercel Deployment Guide

This guide will help you deploy your E-Learning platform to Vercel.

## 📋 Prerequisites

1. **Vercel Account**: Sign up at [vercel.com](https://vercel.com)
2. **GitHub Repository**: Your code should be pushed to GitHub (✅ Already done)
3. **Database**: You'll need a cloud database (MySQL/PostgreSQL)

## 🗄️ Database Setup Options

### Option 1: PlanetScale (Recommended)
1. Go to [planetscale.com](https://planetscale.com)
2. Sign up with GitHub
3. Create a new database
4. Get connection string from dashboard

### Option 2: Railway
1. Go to [railway.app](https://railway.app)
2. Sign up with GitHub
3. Create MySQL service
4. Get connection details

### Option 3: Aiven
1. Go to [aiven.io](https://aiven.io)
2. Create MySQL service
3. Get connection string

## 🚀 Vercel Deployment Steps

### Step 1: Import Project
1. Go to [vercel.com/dashboard](https://vercel.com/dashboard)
2. Click "Add New..." → "Project"
3. Import from GitHub: Select `E-Learning-Intor-to-AI-Assignment`
4. Click "Deploy"

### Step 2: Configure Environment Variables
After import, go to Project Settings → Environment Variables and add:

```
DB_HOST=your-database-host
DB_USER=your-database-username  
DB_PASSWORD=your-database-password
DB_NAME=easylearn_db
DB_PORT=3306
JWT_SECRET=your-super-secret-jwt-key-here-make-it-long-and-random
JWT_EXPIRE=24h
BCRYPT_ROUNDS=12
NODE_ENV=production
```

### Step 3: Import Database Schema
Run this SQL in your cloud database:

```sql
-- Use the database_schema.sql file in your project
-- Copy and paste the entire contents into your database
```

### Step 4: Redeploy
1. Go to Deployments tab
2. Click "Redeploy" to apply environment variables

## 📁 Project Structure (Already Configured)

```
├── api/
│   └── index.js          # Serverless API functions
├── public/               # Static frontend files
│   ├── index.html
│   ├── script.js
│   ├── styles.css
│   └── api-service.js
├── vercel.json          # Vercel configuration
└── package.json
```

## 🔧 Configuration Files

### vercel.json ✅
```json
{
  "version": 2,
  "builds": [
    {
      "src": "api/index.js",
      "use": "@vercel/node"
    },
    {
      "src": "public/**",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/api/(.*)",
      "dest": "/api/index.js"
    },
    {
      "src": "/(.*)",
      "dest": "/public/$1"
    }
  ]
}
```

## 🌐 After Deployment

1. **Test API**: Visit `https://your-app.vercel.app/api/health`
2. **Test Frontend**: Visit `https://your-app.vercel.app`
3. **Check Logs**: Use Vercel dashboard for debugging

## 🛠️ Troubleshooting

### Common Issues:

1. **Database Connection Errors**
   - Verify environment variables
   - Check database firewall settings
   - Ensure database accepts connections from 0.0.0.0

2. **API Not Working**
   - Check Vercel function logs
   - Verify API routes in vercel.json
   - Ensure all dependencies are in package.json

3. **Frontend Issues**
   - Check if files are in public/ directory
   - Verify API service URLs

### Database Connection Test
Add this to test database connectivity:
```javascript
// In your database setup
console.log('Connecting with:', {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_NAME
});
```

## 📊 Features Available After Deployment

✅ User Authentication (Register/Login)
✅ Course Management
✅ Lesson Navigation
✅ Quiz System with Multiple Choice Questions
✅ Progress Tracking
✅ Survey System
✅ Responsive Design

## 🔒 Security Notes

- JWT tokens for authentication
- Password hashing with bcrypt
- Rate limiting enabled
- CORS configured
- Helmet security headers

## 📱 Mobile Ready

The platform is fully responsive and works on:
- Desktop computers
- Tablets
- Mobile phones

---

## Quick Deploy Button (Alternative)

You can also use this deploy button:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Hlomohangcue/E-Learning-Intor-to-AI-Assignment)

Remember to set up your environment variables after deployment!