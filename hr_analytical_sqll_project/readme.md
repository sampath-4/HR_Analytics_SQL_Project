# 👔 HR Analytics SQL Project  

## 📌 Overview  
This project analyzes **employee and HR data** using SQL. It provides insights into **salary distribution, employee demographics, retention, and performance**, showing how HR teams can use data to make better decisions.  

The project demonstrates SQL skills such as **joins, aggregations, window functions, date calculations, and CASE statements**.  

---

## 📂 Database Structure  

### 1. **departments**  
| Column          | Type      | Description                  |  
|-----------------|-----------|------------------------------|  
| department_id   | INT (PK)  | Unique department identifier |  
| department_name | VARCHAR   | Name of department           |  

### 2. **employees**  
| Column        | Type         | Description                  |  
|---------------|--------------|------------------------------|  
| employee_id   | INT (PK)     | Unique employee identifier   |  
| first_name    | VARCHAR      | Employee first name          |  
| last_name     | VARCHAR      | Employee last name           |  
| gender        | CHAR(1)      | Gender (M/F)                 |  
| age           | INT          | Employee age                 |  
| department_id | INT (FK)     | Link to department           |  
| role          | VARCHAR      | Employee role/position       |  
| salary        | DECIMAL      | Employee salary              |  
| joining_date  | DATE         | Date employee joined         |  
| location      | VARCHAR      | Work location                |  

### 3. **performance**  
| Column            | Type      | Description                 |  
|-------------------|-----------|-----------------------------|  
| perf_id           | INT (PK)  | Performance record ID       |  
| employee_id       | INT (FK)  | Link to employees           |  
| year              | INT       | Year of evaluation          |  
| performance_score | INT       | Performance score (0–100)   |  

---

## 📊 Key Business Questions Answered  

1. Average salary by department and role  
2. Top 5 highest-paid employees per department  
3. Average tenure of employees in each department  
4. Number of employees in each location and department  
5. Gender distribution across departments  
6. Which age group has the highest average salary  
7. Department with highest retention (longest average tenure)  
8. Top employees by performance score (2022)  

---

## 🔹 Insights Gained  
- Finance and IT departments have the **highest-paying roles**.  
- Sales and Marketing show **younger workforce demographics**, while HR has more senior employees.  
- Employees aged **25–35** are the most common, but the **36–50** age group earns the highest average salaries.  
- Retention is highest in **Finance and HR departments**.  
- Top performers are often in **managerial and technical roles**, highlighting leadership and specialized skills.  

---

## 🛠️ Technologies Used  
- **SQL** (MySQL / PostgreSQL / SQLite)  
- **Database Design** (schemas, relationships, keys)  

---

## 🚀 How to Run  

1. Clone the repository:  
   ```bash
   git clone https://github.com/<your-username>/HR_Analytics_SQL_Project.git
   cd HR_Analytics_SQL_Project
