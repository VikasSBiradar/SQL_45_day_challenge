SELECT W1.id AS id 
FROM Weather W1
JOIN Weather W2 ON W1.recordDate = DATEADD(day, 1, w2.recordDate)
WHERE W1.temperature > W2.temperature