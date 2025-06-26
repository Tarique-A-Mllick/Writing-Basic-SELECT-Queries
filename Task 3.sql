create database students;

show databases;
use students;
-- 1. Create the 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- 2. Create the 'courses' table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    duration INT -- duration in weeks
);

-- 3. Insert sample data into 'students'
INSERT INTO students (student_id, first_name, last_name, age, city) VALUES
(1, 'Amit', 'Sharma', 19, 'Kolkata'),
(2, 'Neha', 'Verma', 22, 'Delhi'),
(3, 'Ravi', 'Kumar', 21, 'Mumbai'),
(4, 'Sneha', 'Patel', 18, 'Kolkata'),
(5, 'Raj', 'Das', 24, 'Delhi'),
(6, 'Tina', 'Roy', 20, 'Mumbai');

-- 4. Insert sample data into 'courses'
INSERT INTO courses (course_id, course_name, duration) VALUES
(101, 'Data Science Basics', 10),
(102, 'Advanced Java', 12),
(103, 'Web Development', 8),
(104, 'Data Structures', 6),
(105, 'AI & Machine Learning', 14);

-- 5. SELECT queries

-- a. Select all students
SELECT * FROM students;

-- b. Select specific columns from courses
SELECT course_id, course_name FROM courses;

-- c. Select students where age > 18
SELECT * FROM students
WHERE age > 18;

-- d. Select students from Kolkata and age >= 20
SELECT * FROM students
WHERE city = 'Kolkata' AND age >= 20;

-- e. Select courses containing 'Data' in the name
SELECT * FROM courses
WHERE course_name LIKE '%Data%';

-- f. Select students aged between 18 and 25
SELECT * FROM students
WHERE age BETWEEN 18 AND 25;

-- g. Select students from Delhi or Mumbai
SELECT * FROM students
WHERE city = 'Delhi' OR city = 'Mumbai';

-- h. Order students by last name ascending
SELECT * FROM students
ORDER BY last_name ASC;

-- i. Order courses by duration descending
SELECT * FROM courses
ORDER BY duration DESC;

-- j. Limit the number of student results to 5
SELECT * FROM students
LIMIT 5;
