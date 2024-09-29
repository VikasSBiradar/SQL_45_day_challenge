WITH playe_login_details AS(
    SELECT 
      player_id,
      event_date,
      ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) AS    player_log_details_rank 
    
     FROM Activity 
)

SELECT player_id,event_date  AS first_login FROM playe_login_details WHERE 
player_log_details_rank = 1