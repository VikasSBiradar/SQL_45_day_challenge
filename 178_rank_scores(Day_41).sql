/* Write your T-SQL query statement below */
WITH scores_rank AS (
    SELECT id,
           score,
           DENSE_RANK() OVER (ORDER BY score DESC) AS rank
    FROM Scores
)
SELECT score, rank
FROM scores_rank
ORDER BY rank;
