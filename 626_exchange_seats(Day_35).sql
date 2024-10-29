DECLARE @maxId INT = (SELECT MAX(id) FROM Seat);

SELECT 
    S.id, 
    CASE 
        WHEN S.id % 2 = 1 AND @maxId <> S.id THEN (SELECT student FROM Seat WHERE id = S.id + 1)
        WHEN S.id % 2 = 1 AND @maxId = S.id THEN (SELECT student FROM Seat WHERE id = S.id)
        ELSE (SELECT student FROM Seat WHERE id = S.id - 1) 
    END AS student 
FROM Seat S 
ORDER BY S.id ASC;
