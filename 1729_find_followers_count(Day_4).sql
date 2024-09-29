SELECT user_id, count(follower_id) AS followers_count FROM Followers 
GROUP BY (user_id)