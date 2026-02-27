select distinct num As ConsecutiveNums
From(
select num,
lead(num,1) over(ORDER BY id )as ConsecutiveNums1,
lead(num,2) over(ORDER BY id )as ConsecutiveNums2

from logs
)temp

Where num = ConsecutiveNums1 and num = ConsecutiveNums2;
