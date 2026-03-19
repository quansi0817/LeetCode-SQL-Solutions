# Write your MySQL query statement below




SELECT 
    name 
FROM 
    Employee AS temp1
JOIN
    (
        SELECT 
            ManagerId
        FROM
            Employee
        GROUP BY ManagerId
        HAVING COUNT(ManagerId) >=5) AS temp2
ON 
    temp1.Id = temp2.ManagerId