/* Write your T-SQL query statement below */
SELECT u.name, ISNULL(SUM(R.distance),0) AS travelled_distance FROM Users U
LEFT JOIN Rides R ON R.user_id = U.id
GROUP BY U.id,U.name
ORDER BY travelled_distance DESC, name 