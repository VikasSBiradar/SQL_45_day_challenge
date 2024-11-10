/* Write your T-SQL query statement below */
--GROUP BY
--DATE PART
--COUNT
SELECT 
     U.user_id AS buyer_id,
     U.join_date,
     ISNULL(COUNT(item_id),0) AS orders_in_2019
FROM
Users U 
LEFT JOIN Orders O WITH(NOLOCK) ON O.buyer_id = U.user_id AND DATEPART(year,order_date) = 2019
GROUP BY U.user_id,U.join_date