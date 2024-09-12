-- # Write your MySQL query statement below
-- select p.product_id ,ROUND(SUM(p.price * COALESCE(u.units, 0)) / SUM(COALESCE(u.units, 0)), 2) AS average_price
-- from prices p LEFT join UnitsSold u
-- on p.product_id = u.product_id
-- and u.purchase_date between p.start_date and p.end_date
-- group by product_id

SELECT p.product_id, 
       COALESCE(ROUND(SUM(p.price * u.units) / NULLIF(SUM(u.units), 0), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u 
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;