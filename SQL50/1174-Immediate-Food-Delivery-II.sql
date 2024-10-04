-- SELECT
--     ROUND((SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*) )*100,2) AS immediate_percentage
-- FROM
--     Delivery
-- WHERE (customer_id , order_date) IN
-- (SELECT customer_id, min(order_date) 
-- FROM Delivery
-- GROUP BY customer_id)


-- SELECT
--     ROUND((SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS immediate_percentage
-- FROM
--     Delivery d
-- JOIN
--     (SELECT customer_id, MIN(order_date) AS min_order_date
--      FROM Delivery
--      GROUP BY customer_id) AS earliest_orders
-- ON d.customer_id = earliest_orders.customer_id
-- AND d.order_date = earliest_orders.min_order_date;
SELECT
    ROUND((SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS immediate_percentage
FROM
    Delivery
WHERE (customer_id, order_date) IN
(SELECT customer_id, MIN(order_date) 
 FROM Delivery
 GROUP BY customer_id);