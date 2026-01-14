# University ERP System

A desktop application recreating IIIT Delhi's ERP system using Java SE and Swing, featuring role-based access control, dual database architecture, and comprehensive academic management capabilities.

**Course:** Advanced Programming (CSE201)  
**Team Members:** Naman Galav (2024366), Shauryah Annavel (2024526)  
**Date:** November 27, 2025

## Overview

This project implements a complete university ERP system with three distinct user roles: Administrator, Instructor, and Student. The system enables efficient management of course registrations, grading, and scheduling while maintaining strict security through database isolation and role-based access control.

## Key Features

### Role-Based Access Control
- **Administrator**: Full system control including user management, course/section creation, and maintenance mode toggling
- **Instructor**: Manage assessments and grades for assigned sections, export gradebooks
- **Student**: View course catalog, register/drop courses, view timetable and grades, download transcripts

### Security Features
- **Dual Database Architecture**: Separate authentication (auth_db) and academic (erp_db) databases
- **BCrypt Password Hashing**: Secure password storage with no plaintext passwords
- **Login Lockout**: Account locked for 15 minutes after 5 failed login attempts
- **Password History**: Prevents reuse of last 3 passwords
- **Maintenance Mode**: Global flag restricting write operations for students/instructors during system updates

## Database Design

### Authentication Database (auth_db)
- `users_auth`: User credentials, roles, failed login tracking
- `password_history`: Stores last 3 password hashes per user

### ERP Database (erp_db)
- `students`: Student profiles linked to auth_db
- `instructors`: Instructor profiles and department information
- `courses`: Course metadata (code, title, credits)
- `sections`: Course instances with schedules and capacity
- `enrollments`: Student-section registration records
- `grades`: Assessment scores and final letter grades
- `course_prerequisites`: Course dependency rules
- `settings`: System-wide configuration flags

## Functionality by Role

### Student Module
- **Course Catalog**: Searchable and sortable table with prerequisite validation
- **My Registrations**: View enrolled courses with drop functionality
- **Timetable**: Visual schedule grid organized by day and time
- **Transcript**: Complete grade history with PDF and CSV download options

### Instructor Module
- **My Sections**: View assigned course sections
- **Gradebook**: Enter and manage Quiz, Midterm, and Final exam scores
- **Grade Computation**: Automated final grade calculation using 20/30/50 weighting
- **Statistics**: View average, highest, and lowest scores per section
- **Export**: Download gradebook data as CSV

### Admin Module
- **User Management**: Create accounts for Admin, Student, and Instructor roles
- **Course Management**: Add, edit, and delete courses
- **Section Management**: Create sections with schedules, assign instructors, manage capacity
- **Settings**: Toggle maintenance mode for system-wide read-only enforcement

## Grading System

### Weighting Formula
Final Score = (Quiz × 0.20) + (Midterm × 0.30) + (Final × 0.50)

### Letter Grade Scale
- **A**: 90-100
- **B**: 80-89
- **C**: 70-79
- **D**: 60-69
- **E**: 50-59
- **F**: Below 50

Instructors can compute final grades with one click, automatically updating the database for all students.

## Technical Stack

- **Language**: Java SE
- **UI Framework**: Swing with FlatLaf styling
- **Database**: MySQL (dual database architecture)
- **Security**: BCrypt password hashing
- **PDF Generation**: OpenPDF library
- **Architecture**: DAO and Service layer pattern

## Advanced Features

1. **PDF Export**: Students can generate professional PDF transcripts
2. **CSV Export**: Instructors can export gradebooks for offline analysis
3. **Search & Sort**: Real-time course catalog filtering using TableRowSorter
4. **Session Management**: Singleton SessionManager tracks logged-in users
5. **Maintenance Mode**: Visual red banner alerts with enforced read-only access

## Installation & Setup

1. Clone the repository
2. Set up MySQL databases (auth_db and erp_db)
3. Configure database connection in the application
4. Build and run the Java application
5. Default admin credentials provided for initial setup

## Security Considerations

- All passwords are hashed using BCrypt
- Separate databases prevent authentication bypass
- Failed login attempt tracking with automatic lockout
- Password history prevents weak password reuse
- Maintenance mode ensures data integrity during updates

## Conclusion

This University ERP system successfully implements a secure, user-friendly platform for academic management with clean separation of concerns, robust security measures, and comprehensive functionality for all user roles.
