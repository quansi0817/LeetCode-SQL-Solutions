WITH temp AS (
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
    DENSE_RANK() OVER(PARTITION BY d.name ORDER BY Salary desc) AS rak


from Employee e left join Department d 
on e.departmentId = d.id

)

select Department,Employee,Salary
from temp
where rak =1;