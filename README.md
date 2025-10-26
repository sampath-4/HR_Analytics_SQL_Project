👔 HR Analytics SQL Project
📌 Overview
This project analyzes employee and HR data using SQL. It provides insights into salary distribution, employee demographics, retention, and performance, showing how HR teams can use data to make better decisions.

The project demonstrates SQL skills such as joins, aggregations, window functions, date calculations, and CASE statements.

📂 Database Structure
1. departments
Column	Type	Description
department_id	INT (PK)	Unique department identifier
department_name	VARCHAR	Name of department
2. employees
Column	Type	Description
employee_id	INT (PK)	Unique employee identifier
first_name	VARCHAR	Employee first name
last_name	VARCHAR	Employee last name
gender	CHAR(1)	Gender (M/F)
age	INT	Employee age
department_id	INT (FK)	Link to department
role	VARCHAR	Employee role/position
salary	DECIMAL	Employee salary
joining_date	DATE	Date employee joined
location	VARCHAR	Work location
3. performance
Column	Type	Description
perf_id	INT (PK)	Performance record ID
employee_id	INT (FK)	Link to employees
year	INT	Year of evaluation
performance_score	INT	Performance score (0–100)
📊 Key Business Questions Answered
Average salary by department and role
Top 5 highest-paid employees per department
Average tenure of employees in each department
Number of employees in each location and department
Gender distribution across departments
Which age group has the highest average salary
Department with highest retention (longest average tenure)
Top employees by performance score (2022)
🔹 Insights Gained
Finance and IT departments have the highest-paying roles.
Sales and Marketing show younger workforce demographics, while HR has more senior employees.
Employees aged 25–35 are the most common, but the 36–50 age group earns the highest average salaries.
Retention is highest in Finance and HR departments.
Top performers are often in managerial and technical roles, highlighting leadership and specialized skills.
🛠️ Technologies Used
SQL (MySQL / PostgreSQL / SQLite)
Database Design (schemas, relationships, keys)
🚀 How to Run
Clone the repository:
git clone https://github.com/<your-username>/HR_Analytics_SQL_Project.git
cd HR_Analytics_SQL_Project
