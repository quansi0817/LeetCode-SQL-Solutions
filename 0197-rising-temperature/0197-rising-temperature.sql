# Write your MySQL query statement below

select w.id 
from Weather w join Weather e on DATEDIFF(w.recordDate,  e.recordDate)=1
where w. temperature > e.temperature