/* Write your T-SQL query statement below */
SELECT CASE WHEN MAX(Salary) IS NOT NULL THEN MAX(Salary) ELSE NULL END AS  SecondHighestSalary  FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employee)
