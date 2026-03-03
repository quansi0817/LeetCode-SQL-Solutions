# Write your MySQL query statement below
WITH TEMP AS 
(SELECT player_id, device_id,
ROW_NUMBER()OVER(PARTITION BY player_id ORDER BY event_date ASC) AS Rak
FROM Activity
)

SELECT player_id, device_id
FROM TEMP
WHERE Rak = 1
