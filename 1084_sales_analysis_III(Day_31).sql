/* Write your T-SQL query statement below */
SELECT DISTINCT P.product_id, P.product_name 
FROM Product P
JOIN Sales S WITH(NOLOCK) ON P.product_id =  S.product_id
GROUP BY p.product_id, product_name
HAVING MIN(S.sale_date) >='2019-01-01' AND MAX(S.sale_date) <= '2019-03-31'