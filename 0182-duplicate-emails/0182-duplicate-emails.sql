# Write your MySQL query statement below
SELECT EMAIL FROM PERSON
GROUP BY email
HAVING COUNT(email)>1