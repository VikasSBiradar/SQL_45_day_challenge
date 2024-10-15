/* Write your T-SQL query statement below */
WITH cte AS 
(
    SELECT actor_id,
           director_id,
           COUNT(CASE WHEN actor_id = director_id THEN 1 ELSE 0 END) AS cnt 
           FROM ActorDirector
           GROUP BY actor_id, director_id
)

SELECT actor_id, director_id  FROM cte WHERE cnt>=3