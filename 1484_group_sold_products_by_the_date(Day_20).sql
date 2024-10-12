    SELECT sell_date,
           COUNT(DISTINCT product) AS num_sold,
           STRING_AGG(product,',') WITHIN GROUP(ORDER BY product) AS products
           FROM 
           (SELECT DISTINCT sell_date, product FROM Activities) PSL
    GROUP BY sell_date
    ORDER BY sell_date