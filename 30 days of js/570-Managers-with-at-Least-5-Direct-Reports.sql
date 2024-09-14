# Write your MySQL query statement below
-- SELECT e.name
-- FROM Employee e
-- JOIN Employee ea
-- ON e.id = ea.managerId
-- GROUP BY e.id
-- HAVING COUNT(e.id) >= 5
-- SELECT name
-- FROM Employee
-- WHERE id IN (
--     SELECT managerId
--     FROM Employee
--     WHERE managerId IS NOT NULL
--     GROUP BY managerId
--     HAVING COUNT(*) >= 5
-- );
SELECT e.name
FROM Employee e
JOIN Employee ea
ON e.id = ea.managerId
GROUP BY e.id
HAVING COUNT(ea.id) >= 5;