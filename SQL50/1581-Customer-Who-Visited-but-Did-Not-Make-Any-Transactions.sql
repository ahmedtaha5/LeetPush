# Write your MySQL query statement below
select v.customer_id , count(v.customer_id) as count_no_trans
from Visits v
left join Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by  v.customer_id
-- from
-- join
-- on
-- where 
-- group
-- having
-- select
-- order by


-- # Write your MySQL query statement below
-- select Visits.customer_id ,count(Visits.customer_id) as count_no_trans
-- from Visits 
-- left join Transactions 
-- on Visits.visit_id=Transactions.visit_id
-- where Transactions.transaction_id is null
-- group by Visits.customer_id