SELECT DISTINCT num AS ConsecutiveNums
FROM(
SELECT num,
lead(num,1) over(ORDER BY id )as ConsecutiveNums1,
lead(num,2) over(ORDER BY id )as ConsecutiveNums2

FROM logs
)temp

WHERE num = ConsecutiveNums1 AND num = ConsecutiveNums2;
