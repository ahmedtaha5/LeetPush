-- SELECT s.user_id, 
--     ROUND(COUNT(c.action) / ifnull((SELECT COUNT(*) FROM Confirmations), 0), 2) AS confirmation_rate
-- FROM Signups s
-- LEFT JOIN Confirmations c
-- ON s.user_id = c.user_id
-- GROUP BY s.user_id;


-- SELECT s.user_id, 
--        ROUND(COUNT(c.action) / (SELECT COUNT(*) FROM Confirmations), 2) AS confirmation_rate
-- FROM Signups s
-- LEFT JOIN Confirmations c
-- ON s.user_id = c.user_id
-- GROUP BY s.user_id;


-- SELECT s.user_id, 
--        ROUND(SUM(c.action = 'confirmed') / COUNT(c.user_id), 2) AS confirmation_rate
-- FROM Signups s
-- INNER JOIN Confirmations c
-- ON s.user_id = c.user_id
-- GROUP BY s.user_id;
SELECT s.user_id,
       ROUND(
         COALESCE(
           SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / NULLIF(COUNT(c.user_id), 0),
           0
         ), 2
       ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;