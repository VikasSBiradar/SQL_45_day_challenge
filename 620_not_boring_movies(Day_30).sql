SELECT id, movie, description, rating 
FROM Cinema WHERE id % 2 = 1 AND Description NOT LIKE '%boring%' ORDER BY ID DESC