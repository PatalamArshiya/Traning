CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Arshiya', 101),
(2, 'Ravi', 102),
(3, 'Priya', 101),
(4, 'Kiran', 103),
(5, 'Sita', NULL);

INSERT INTO departments VALUES
(101, 'AIML'),
(102, 'CSE'),
(103, 'ECE'),
(104, 'IT');

SELECT * FROM students;

SELECT * FROM departments;

SELECT 
    students.student_name,
    departments.department_name
FROM students
INNER JOIN departments
ON students.department_id = departments.department_id;


SELECT 
    students.student_name,
    departments.department_name
FROM students
LEFT JOIN departments
ON students.department_id = departments.department_id;


SELECT 
    students.student_name,
    departments.department_name
FROM students
RIGHT JOIN departments
ON students.department_id = departments.department_id;


SELECT 
    students.student_name,
    departments.department_name
FROM students
LEFT JOIN departments
ON students.department_id = departments.department_id

UNION

SELECT 
    students.student_name,
    departments.department_name
FROM students
RIGHT JOIN departments
ON students.department_id = departments.department_id;


SELECT 
    students.student_name,
    departments.department_name
FROM students
CROSS JOIN departments;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;


SELECT *
FROM students
NATURAL JOIN departments;


SELECT 
    s.student_name,
    d.department_name
FROM students s
JOIN departments d
ON s.department_id = d.department_id;