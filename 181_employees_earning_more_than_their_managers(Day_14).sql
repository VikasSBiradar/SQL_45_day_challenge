/* Write your T-SQL query statement below */
SELECT e2.Name AS Employee
FROM Employee E1
JOIN Employee E2
ON E1.id = E2.managerId
WHERE E2.Salary > E1.Salary