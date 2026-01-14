-- Sample Test Data for University ERP

-- Insert test users
INSERT INTO users (username, password, role, email) VALUES
('admin1', '$2a$12$testPasswordHashAdminUser', 'ADMIN', 'admin1@university.edu'),
('instr_smith', '$2a$12$testPasswordHashInstructor', 'INSTRUCTOR', 'smith@university.edu'),
('student_john', '$2a$12$testPasswordHashStudent', 'STUDENT', 'john.doe@university.edu'),
('student_jane', '$2a$12$testPasswordHashStudent', 'STUDENT', 'jane.smith@university.edu'),
('instr_johnson', '$2a$12$testPasswordHashInstructor', 'INSTRUCTOR', 'johnson@university.edu');

-- Insert test students
INSERT INTO students (user_id, roll_number, first_name, last_name, date_of_birth, phone, address, gpa, enrollment_date) VALUES
(3, 'CSE001', 'John', 'Doe', '2002-05-15', '9876543210', '123 Main St, City', 3.75, '2022-08-15'),
(4, 'CSE002', 'Jane', 'Smith', '2002-03-22', '9876543211', '456 Oak Ave, City', 3.85, '2022-08-15');

-- Insert test instructors
INSERT INTO instructors (user_id, employee_id, first_name, last_name, phone, office_location, department, hire_date) VALUES
(2, 'EMP001', 'Dr. Smith', 'Johnson', '9123456789', 'Building A, Room 301', 'Computer Science', '2015-06-01'),
(5, 'EMP002', 'Dr. Johnson', 'Williams', '9123456790', 'Building A, Room 302', 'Computer Science', '2018-08-15');

-- Insert test courses
INSERT INTO courses (course_code, course_name, description, credits, department) VALUES
('CS101', 'Introduction to Programming', 'Basic programming concepts and fundamentals', 3, 'Computer Science'),
('CS201', 'Data Structures', 'Advanced data structures and algorithms', 4, 'Computer Science'),
('CS301', 'Database Management Systems', 'Database design and SQL', 3, 'Computer Science');

-- Insert test sections
INSERT INTO sections (course_id, section_number, instructor_id, semester, year, capacity, enrolled_count, timing, location) VALUES
(1, 1, 1, 'FALL', 2024, 30, 2, 'MWF 10:00-11:00', 'Building A, Room 101'),
(2, 1, 2, 'FALL', 2024, 25, 1, 'TTh 14:00-15:30', 'Building A, Room 102'),
(3, 1, 1, 'SPRING', 2025, 20, 0, 'MWF 11:00-12:00', 'Building A, Room 201');

-- Insert test enrollments
INSERT INTO enrollments (student_id, section_id, status, attendance_percentage) VALUES
(1, 1, 'ENROLLED', 95.5),
(2, 1, 'ENROLLED', 88.0),
(1, 2, 'ENROLLED', 92.0);

-- Insert test grades
INSERT INTO grades (enrollment_id, midterm_score, final_score, assignment_score, participation_score, total_score, letter_grade, grade_points) VALUES
(1, 85.0, 90.0, 88.0, 95.0, 89.5, 'A', 4.0),
(2, 78.0, 82.0, 80.0, 85.0, 81.25, 'B', 3.0),
(3, 88.0, 92.0, 90.0, 93.0, 90.75, 'A', 4.0);

-- Insert test settings
INSERT INTO settings (setting_key, setting_value, description) VALUES
('academic_year', '2024-2025', 'Current academic year'),
('grading_scale_a', '90', 'Grading scale: A starts at'),
('grading_scale_b', '80', 'Grading scale: B starts at'),
('grading_scale_c', '70', 'Grading scale: C starts at'),
('max_credits_per_semester', '18', 'Maximum credits per semester'),
('min_gpa_required', '2.0', 'Minimum GPA required for continuation');
