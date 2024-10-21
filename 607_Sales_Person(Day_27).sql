/* Write your T-SQL query statement below */
SELECT  DISTINCT SP.name AS name
FROM SalesPerson SP
WHERE SP.sales_id NOT IN (SELECT DISTINCT SP1.sales_id 
                       FROM SalesPerson SP1
                       JOIN Orders O ON O.sales_id = SP1.sales_id
                       JOIN Company C ON C.com_id = O.com_id
                       WHERE C.name = 'Red' )