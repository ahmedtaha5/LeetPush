-- # Write your MySQL query statement below
-- SELECT customer_id 
-- FROM Customer c
-- JOIN Product p
-- on c.product_key = p.product_key

-- GROUP BY customer_id

SELECT customer_id
FROM Customer 
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product)