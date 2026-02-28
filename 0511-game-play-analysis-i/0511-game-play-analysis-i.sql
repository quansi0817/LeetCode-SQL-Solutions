# Write your MySQL query statement below

WITH temp AS (
    SELECT 
        player_id,
        device_id,
        event_date,
        games_played,
        ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS rank1
    FROM 
        Activity
)

SELECT 
        player_id,
        event_date AS first_login
FROM 
        temp
WHERE 
        rank1 = 1;