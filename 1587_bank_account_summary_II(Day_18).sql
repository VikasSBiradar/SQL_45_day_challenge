/* Write your T-SQL query statement below */
WITH user_account_balance AS (
    SELECT U.account AS account,
           U.name AS name,
           SUM(T.amount) AS balance
    FROM Users U 
    JOIN Transactions T ON U.account = T.account 
    GROUP BY U.account, U.Name
)

SELECT name,
       balance
 FROM user_account_balance
 WHERE balance > 10000