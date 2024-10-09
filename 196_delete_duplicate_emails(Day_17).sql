/* Write your T-SQL query statement below */
CREATE TABLE #duplicate_email_ids(
    Id INT NULL
)

;WITH duplicate_email_rank AS(
       SELECT Id,
              Email,
              ROW_NUMBER() OVER (PARTITION BY EMAIL order by ID) as email_rank_count
        FROM Person

)
 
INSERT INTO #duplicate_email_ids(Id)
SELECT Id 
FROM duplicate_email_rank 
WHERE email_rank_count > 1

DELETE FROM Person WHERE Id IN (SELECT Id FROM #duplicate_email_ids)
   
DROP TABLE #duplicate_email_ids