# University ERP Testing - Test Plan

## Overview
This document outlines the test plan for the University ERP system, including unit tests, service tests, and integration tests.

## Test Scope

### In Scope
- Authentication & Authorization (login, password change, session management)
- User Management (CRUD operations for students, instructors, admins)
- Course & Section Management
- Enrollment Management
- Grade Management & Calculations
- Data persistence and database operations
- Export functionality (PDF, CSV)

### Out of Scope
- UI/Frontend testing (manual testing required)
- Performance testing under high load
- Security penetration testing

## Test Strategy

### 1. Unit Tests
Test individual components in isolation using mocks.

**Test Classes:**
- `UserAuthDAOTest` - User authentication and DAO operations
- `StudentDAOTest` - Student CRUD operations
- `InstructorDAOTest` - Instructor CRUD operations
- `CourseDAOTest` - Course CRUD operations
- `EnrollmentDAOTest` - Enrollment management
- `GradeDAOTest` - Grade operations and calculations
- `PasswordUtilTest` - Password hashing and validation

**Test Cases per Class:** 5-8 test methods

### 2. Service Layer Tests
Test business logic and service operations.

**Test Classes:**
- `StudentServiceTest` - Student-related services
- `InstructorServiceTest` - Instructor services
- `AdminServiceTest` - Administrative functions
- `SessionManagerTest` - Session management
- `AuthServiceTest` - Authentication workflows

**Test Cases per Class:** 5-10 test methods

### 3. Integration Tests
Test multiple components working together.

**Test Classes:**
- `EnrollmentWorkflowTest` - Full enrollment process
- `GradingWorkflowTest` - Grade submission and calculation
- `AccessControlTest` - Permission and role-based access

**Test Cases per Class:** 3-5 test methods

## Test Data

### Test Database
- **Database Name:** university_erp_test
- **Reset:** Before each test class

### Test Users
1. **Admin (admin1)**
   - Full system access
   - Can manage courses, users, grades

2. **Instructor (instr_smith, instr_johnson)**
   - Can manage sections and grades
   - Can view student enrollments

3. **Students (student_john, student_jane)**
   - Can view their courses and grades
   - Limited system access

### Test Courses
- CS101: Introduction to Programming (30 capacity)
- CS201: Data Structures (25 capacity)
- CS301: Database Management Systems (20 capacity)

### Sample Enrollment Data
- 2 students enrolled in CS101
- 1 student enrolled in CS201

## Test Execution

### Prerequisites
1. MySQL database running
2. Test database created with schema
3. Sample data loaded
4. Maven configured with Java 17

### Execution Environment
- **Maven Goal:** `mvn clean test`
- **Coverage Tool:** JaCoCo
- **Reporting:** TestNG/JUnit 5 reports

### Test Execution Order
1. DAO layer tests (data persistence)
2. Service layer tests (business logic)
3. Integration tests (end-to-end workflows)

## Expected Test Results

### Success Criteria
- All unit tests pass
- All service tests pass
- All integration tests pass
- Code coverage ≥ 70%
- No critical defects

### Acceptance Criteria
- User authentication works correctly
- Course enrollment process completes successfully
- Grade calculations are accurate
- Data persistence verified
- Access control enforced

## Known Issues & Limitations

### Current Limitations
- Database must be reset between test runs
- Tests require local MySQL instance
- UI testing not automated

### Future Enhancements
- Implement test containers for isolated DB
- Add performance testing
- Implement end-to-end Selenium tests
- Add CI/CD pipeline integration

## Test Maintenance

### Update Frequency
- Review quarterly or after major feature additions
- Update test data if business rules change
- Maintain 70%+ code coverage

### Regression Testing
- Run full test suite before each release
- Run smoke tests (high-priority tests) after any code change
- Update existing tests if functionality changes
