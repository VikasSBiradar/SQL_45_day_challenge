/* Write your T-SQL query statement below */
SELECT C.name AS Customers
FROM Customers C
LEFT JOIN Orders O WITH(NOLOCK) ON C.id = O.customerId 
WHERE O.id IS NULL