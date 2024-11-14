/* Write your T-SQL query statement below */

SELECT 
    t.request_at AS Day,
    ROUND(
        CAST(SUM(CASE WHEN t.status IN ('cancelled_by_client', 'cancelled_by_driver') THEN 1 ELSE 0 END) AS FLOAT) / NULLIF(COUNT(*), 0), 
        2
    ) AS 'Cancellation Rate'
FROM 
    Trips t
JOIN 
    Users c WITH (NOLOCK) ON c.users_id = t.client_id AND c.banned = 'No'
JOIN 
    Users d WITH (NOLOCK) ON d.users_id = t.driver_id AND d.banned = 'No'
WHERE 
    t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY 
    t.request_at;