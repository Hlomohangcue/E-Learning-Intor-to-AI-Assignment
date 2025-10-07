// API Service Layer for EasyLearn Frontend
// This file handles all communication with the backend API

class APIService {
    constructor() {
        this.baseURL = 'http://localhost:3000/api';
        this.token = localStorage.getItem('authToken');
    }

    // Helper method to make authenticated API calls
    async makeRequest(endpoint, options = {}) {
        const url = `${this.baseURL}${endpoint}`;
        const config = {
            headers: {
                'Content-Type': 'application/json',
                ...options.headers
            },
            ...options
        };

        // Add auth token if available
        if (this.token) {
            config.headers.Authorization = `Bearer ${this.token}`;
        }

        try {
            const response = await fetch(url, config);
            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'API request failed');
            }

            return data;
        } catch (error) {
            console.error(`API Error (${endpoint}):`, error);
            throw error;
        }
    }

    // Update token for authenticated requests
    setToken(token) {
        this.token = token;
        if (token) {
            localStorage.setItem('authToken', token);
        } else {
            localStorage.removeItem('authToken');
        }
    }

    // ===================== AUTHENTICATION API =====================

    async register(name, email, password) {
        const response = await this.makeRequest('/auth/register', {
            method: 'POST',
            body: JSON.stringify({ name, email, password })
        });
        
        if (response.token) {
            this.setToken(response.token);
        }
        
        return response;
    }

    async login(email, password) {
        const response = await this.makeRequest('/auth/login', {
            method: 'POST',
            body: JSON.stringify({ email, password })
        });
        
        if (response.token) {
            this.setToken(response.token);
        }
        
        return response;
    }

    async getProfile() {
        return await this.makeRequest('/auth/profile');
    }

    logout() {
        this.setToken(null);
        return Promise.resolve();
    }

    // ===================== COURSES API =====================

    async getCourses() {
        return await this.makeRequest('/courses');
    }

    async getCourseDetails(courseId) {
        return await this.makeRequest(`/courses/${courseId}`);
    }

    async getLessonContent(courseId, lessonId) {
        return await this.makeRequest(`/courses/${courseId}/lessons/${lessonId}`);
    }

    // ===================== PROGRESS API =====================

    async markLessonComplete(lessonId) {
        return await this.makeRequest(`/progress/lesson/${lessonId}/complete`, {
            method: 'POST'
        });
    }

    async getUserProgress(userId) {
        return await this.makeRequest(`/progress/user/${userId}`);
    }

    // ===================== QUIZ API =====================

    async submitQuiz(courseId, answers) {
        return await this.makeRequest(`/courses/${courseId}/quiz/submit`, {
            method: 'POST',
            body: JSON.stringify({ answers })
        });
    }

    // ===================== SURVEY API =====================

    async submitSurvey(courseId, surveyData) {
        return await this.makeRequest(`/courses/${courseId}/survey/submit`, {
            method: 'POST',
            body: JSON.stringify(surveyData)
        });
    }

    // ===================== HEALTH CHECK =====================

    async checkHealth() {
        return await this.makeRequest('/health');
    }
}

// Create global API service instance
const apiService = new APIService();