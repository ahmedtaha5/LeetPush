-- WITH FirstDay AS (
-- SELECT player_id, MIN(event_date) AS First_Date
-- FROM Activity 
-- GROUP BY player_id )

-- SELECT ROUND
--     (count
--         (a.player_id) / (
--             SELECT count(DISTINCT b.player_id ) from Activity b) , 2) as fraction
-- FROM Activity a
-- JOIN FirstDay fd on a.player_id = fd.player_id
-- WHERE DATEDIFF(a.event_date,FirstDay.First_Date) = 1
WITH FirstDay AS (
    SELECT player_id, MIN(event_date) AS First_Date
    FROM Activity
    GROUP BY player_id
)

SELECT 
    ROUND(
        (COUNT(DISTINCT a.player_id) ) / 
        (SELECT COUNT(DISTINCT b.player_id) FROM Activity b),
        2
    ) AS fraction
FROM Activity a
JOIN FirstDay fd ON a.player_id = fd.player_id
WHERE DATEDIFF(a.event_date, fd.First_Date) = 1;

