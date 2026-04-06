# Write your MySQL query statement below
WITH Temp AS (
    SELECT candidateId, COUNT(candidateId) AS COUNT
    FROM Vote
    GROUP BY candidateId
    ORDER BY COUNT DESC  
    LIMIT 1

)

SELECT c.name
FROM Candidate c JOIN Temp t
ON c.id = t.candidateId
