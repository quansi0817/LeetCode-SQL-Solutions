# Write your MySQL query statement below
DELETE p
from Person p join Person e
on p.email = e.email
where p.id > e.id;