# Write your MySQL query statement below
SELECT DATE_FORMAT(t.trans_date, '%Y-%m') as month, t.country, COUNT(t.id) AS trans_count , SUM( case when t.state = 'approved' THEN 1 ELSE 0 END ) AS approved_count , SUM(t.amount) AS trans_total_amount, SUM( CASE WHEN t.state = 'approved' THEN t.amount ELSE 0 END ) as approved_total_amount
FROM Transactions t
GROUP BY month , country 
