-- ============================================
-- HR Analytics SQL Project
-- Schema and Sample Data
-- ============================================

-- Create database
CREATE DATABASE hr_db;
USE hr_db;

-- =========================
-- 1. Departments Table
-- =========================
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Finance'),
(2, 'Human Resources'),
(3, 'IT'),
(4, 'Sales'),
(5, 'Marketing');

-- =========================
-- 2. Employees Table
-- =========================
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    age INT,
    department_id INT,
    role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    location VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (employee_id, first_name, last_name, gender, age, department_id, role, salary, joining_date, location) VALUES
(101, 'Alice', 'Johnson', 'F', 29, 3, 'Software Engineer', 75000, '2019-03-15', 'New York'),
(102, 'Bob', 'Smith', 'M', 34, 1, 'Financial Analyst', 85000, '2017-07-23', 'Chicago'),
(103, 'Clara', 'Williams', 'F', 41, 2, 'HR Manager', 95000, '2015-11-12', 'Boston'),
(104, 'David', 'Brown', 'M', 25, 4, 'Sales Associate', 55000, '2021-05-20', 'New York'),
(105, 'Ethan', 'Davis', 'M', 38, 5, 'Marketing Specialist', 72000, '2018-08-30', 'Chicago'),
(106, 'Fiona', 'Miller', 'F', 45, 1, 'Finance Manager', 110000, '2013-02-10', 'Boston'),
(107, 'George', 'Wilson', 'M', 31, 3, 'System Administrator', 68000, '2020-01-05', 'New York'),
(108, 'Hannah', 'Moore', 'F', 28, 4, 'Sales Executive', 60000, '2019-09-18', 'Chicago'),
(109, 'Ian', 'Taylor', 'M', 36, 5, 'Marketing Manager', 95000, '2016-06-01', 'Boston'),
(110, 'Julia', 'Anderson', 'F', 42, 2, 'Recruiter', 70000, '2014-12-22', 'New York');

-- =========================
-- 3. Performance Table
-- =========================
CREATE TABLE performance (
    perf_id INT PRIMARY KEY,
    employee_id INT,
    year INT,
    performance_score INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO performance (perf_id, employee_id, year, performance_score) VALUES
(1, 101, 2021, 88),
(2, 102, 2021, 92),
(3, 103, 2021, 85),
(4, 104, 2021, 75),
(5, 105, 2021, 80),
(6, 106, 2021, 95),
(7, 107, 2021, 78),
(8, 108, 2021, 82),
(9, 109, 2021, 90),
(10, 110, 2021, 84),
(11, 101, 2022, 91),
(12, 102, 2022, 94),
(13, 103, 2022, 87),
(14, 104, 2022, 79),
(15, 105, 2022, 83),
(16, 106, 2022, 97),
(17, 107, 2022, 81),
(18, 108, 2022, 85),
(19, 109, 2022, 93),
(20, 110, 2022, 88);
