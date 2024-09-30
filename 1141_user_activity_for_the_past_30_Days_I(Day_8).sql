/* Write your T-SQL query statement below */
DECLARE @startDate DATE = DATEADD(day, -30, '2019-07-27');
DECLARE @endDate DATE = '2019-07-27';

SELECT  activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN @startDate AND @endDate
GROUP BY activity_date