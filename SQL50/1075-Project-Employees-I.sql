# Write your MySQL query statement below
select p.project_id , coalesce(round(sum(e.experience_years) / NULLIF(count(p.project_id),0),2), 0) as average_years
from project p left join Employee e
on p.employee_id = e.employee_id
group by p.project_id