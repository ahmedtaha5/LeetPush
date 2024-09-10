# Write your MySQL query statement below
select un.unique_id ,e.name
from Employees e
left join EmployeeUNI un on un.id=e.id; 