# Write your MySQL query statement below
WITH TEMP AS 
(SELECT 
    e.id,
    e.name AS Employee,
    e.salary AS Salary,
    d.name AS Department,
    DENSE_RANK()OVER(PARTITION BY d.id ORDER BY salary DESC) AS Rak
FROM Employee e 
JOIN Department d 
ON e.departmentId = d.id
)

SELECT 
    Department,
    Employee,
    Salary
FROM TEMP 
WHERE Rak <= 3
