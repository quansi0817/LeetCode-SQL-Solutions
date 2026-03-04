# Write your MySQL query statement below
SELECT Email FROM
(SELECT Email, COUNT(Email) AS num

FROM Person

GROUP BY Email) AS s
WHERE num >1 ;

-------------------------------

SELECT email,
FROM Person
GROUP BY email
HAVING COUNTG(email)>1;
