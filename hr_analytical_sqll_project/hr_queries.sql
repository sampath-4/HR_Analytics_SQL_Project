-- ============================================
-- HR Analytics SQL Project
-- Queries for 8 Key Business Questions
-- ============================================

-- 1. Average salary by department and role
SELECT d.department_name, e.role, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name, e.role
ORDER BY d.department_name, avg_salary DESC;


-- 2. Top 5 highest-paid employees per department
SELECT department_name, first_name, last_name, salary, role
FROM (
    SELECT d.department_name, e.first_name, e.last_name, e.role, e.salary,
           RANK() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) AS salary_rank
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
) ranked
WHERE salary_rank <= 5
ORDER BY department_name, salary DESC;


-- 3. Average tenure (years) of employees in each department
SELECT d.department_name,
       ROUND(AVG(DATEDIFF(CURDATE(), e.joining_date) / 365), 1) AS avg_tenure_years
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_tenure_years DESC;


-- 4. Number of employees in each location and department
SELECT d.department_name, e.location, COUNT(*) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name, e.location
ORDER BY employee_count DESC;


-- 5. Gender distribution across departments
SELECT d.department_name, e.gender, COUNT(*) AS count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name, e.gender
ORDER BY d.department_name, e.gender;


-- 6. Age group with highest average salary
SELECT CASE
           WHEN e.age < 25 THEN 'Under 25'
           WHEN e.age BETWEEN 25 AND 35 THEN '25-35'
           WHEN e.age BETWEEN 36 AND 50 THEN '36-50'
           ELSE '50+'
       END AS age_group,
       AVG(e.salary) AS avg_salary
FROM employees e
GROUP BY age_group
ORDER BY avg_salary DESC;


-- 7. Department with highest retention (longest average tenure)
SELECT d.department_name,
       ROUND(AVG(DATEDIFF(CURDATE(), e.joining_date) / 365), 1) AS avg_tenure_years
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_tenure_years DESC
LIMIT 1;


-- 8. Top 5 employees by performance score (2022)
SELECT e.first_name, e.last_name, d.department_name, p.performance_score
FROM performance p
JOIN employees e ON p.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
WHERE p.year = 2022
ORDER BY p.performance_score DESC
LIMIT 5;
