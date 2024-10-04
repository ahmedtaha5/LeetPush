# Write your MySQL query statement below
SELECT contest_id,round((COUNT(DISTINCT user_id) / (SELECT COUNT(*) from Users ) * 100 ),2)as percentage
FROM Register 
group by contest_id
order by percentage DESC , contest_id ASC