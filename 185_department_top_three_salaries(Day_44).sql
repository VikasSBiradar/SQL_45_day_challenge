/* Write your T-SQL query statement below */
WITH employee_salary_rank AS (
    SELECT 
         E.id,
         D.Name AS Department,
         E.name AS Employee,
         E.Salary,
         DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY Salary DESC) AS salary_rank
    FROM Employee E
    JOIN Department D ON D.id = E.departmentId
)

SELECT Department,
        Employee,
        Salary
FROM employee_salary_rank WHERE salary_rank IN (1,2,3)
ORDER BY salary_rank DESC