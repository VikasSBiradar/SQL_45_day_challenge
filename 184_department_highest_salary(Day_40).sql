/* Write your T-SQL query statement below */
WITH Employee_Department_Rank AS(
    SELECT E.id,
           E.name AS Employee,
           DENSE_RANK() OVER (PARTITION BY D.id order by Salary DESC) AS     department_salary_rank,
           E.Salary AS Salary,
           D.Name as Department
           FROM Employee E
           JOIN Department D WITH(NOLOCK) ON D.id = E.departmentId 
)

SELECT Department,
       Employee,
       Salary
 FROM Employee_Department_Rank
 WHERE department_salary_rank = 1