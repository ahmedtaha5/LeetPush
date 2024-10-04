# Write your MySQL query statement below
SELECT id,
CASE WHEN id%2 = 0 THEN (lag(student) OVER (ORDER BY id))
ELSE ifnull(lead(student) OVER (ORDER BY id),student)
END as "student"
FROM Seat