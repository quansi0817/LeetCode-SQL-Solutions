# Write your MySQL query statement below

with temp as (select id, recordDate, temperature, lag(temperature)over(order by recordDate asc) as 'oldT', lag(recordDate)over(order by recordDate asc) as 'oldR' from Weather 
 ) 

 select id from temp where DATEDIFF(recordDate,oldR) = 1  and temperature > oldT;