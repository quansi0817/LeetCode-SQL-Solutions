# Write your MySQL query statement below

with temp as (select player_id, min(event_date) As first_login_date
From Activity 
group by  player_id 
)

Select round(count(DISTINCT a.player_id)/count(DISTINCT t.player_id),2) as fraction
from temp t
left join Activity a on t.player_id = a.player_id
AND datediff(a.event_date, t.first_login_date) = 1 