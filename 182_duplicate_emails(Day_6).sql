WITH duplicate_emails AS (
    SELECT 
        ID,
        email AS Email,
        ROW_NUMBER() OVER(PARTITION BY Email order by id ) AS email_counter
     FROM Person
)

SELECT DISTINCT Email FROM duplicate_emails WHERE email_counter > 1