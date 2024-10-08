/* Write your T-SQL query statement below */
SELECT V.customer_id , COUNT(V.customer_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T WITH(NOLOCK) ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL 
GROUP BY V.customer_id