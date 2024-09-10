-- SELECT IFNULL(eu.unique_id, 'null') as unique_id, e.name
-- FROM Employees e 
-- left join EmployeeUNI eu ON e.id = eu.id;




# Write your MySQL query statement below
select un.unique_id ,e.name
from Employees e
left join EmployeeUNI un on un.id=e.id; 