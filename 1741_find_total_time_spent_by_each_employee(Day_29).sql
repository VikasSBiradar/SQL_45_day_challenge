/* Write your T-SQL query statement below */
WITH total_time_spent AS (
    SELECT event_day AS day,
           emp_id,
           SUM(in_time) AS total_in_time,
           SUM(out_time) AS total_out_time
           FROM Employees
           GROUP BY emp_id, event_day
)
SELECT day, emp_id, total_out_time - total_in_time AS total_time 
FROM total_time_spent