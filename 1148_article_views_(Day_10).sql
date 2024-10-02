/* Write your T-SQL query statement below */
--author_id = viewer_id
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id = viewer_id
ORDER BY author_id