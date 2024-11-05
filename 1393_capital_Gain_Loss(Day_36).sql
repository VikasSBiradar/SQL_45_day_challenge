/* Write your T-SQL query statement below */
--GROUP BY
--SUM
WITH stock_price AS(
    SELECT stock_name,
    CASE WHEN operation = 'Buy' THEN SUM(-price)
         WHEN operation = 'Sell' THEN SUM(price)
    END AS capital_gain_loss
    FROM stocks
    GROUP BY stock_name, operation
)

SELECT stock_name, SUM(capital_gain_loss) AS capital_gain_loss 
FROM stock_price
GROUP BY stock_name
ORDER BY capital_gain_loss