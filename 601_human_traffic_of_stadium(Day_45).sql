/* Write your T-SQL query statement below */
WITH cte AS (SELECT id,
                   visit_date,
                   people,
                   id - ROW_NUMBER() OVER (ORDER BY id) AS rnum
                   FROM stadium
                   WHERE people >= 100
                   )

SELECT id,
       visit_date,
       people
 FROM cte
 WHERE rnum in (
    SELECT rnum
    FROM cte
    GROUP BY rnum
    HAVING COUNT(*) >= 3
 )