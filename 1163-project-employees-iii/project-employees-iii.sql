select project_id, employee_id
from (
select p.project_id, e.employee_id, rank() over(partition by p.project_id order by e.experience_years desc) as rn
from Project p join 
Employee e on p.employee_id = e.employee_id ) t
where t.rn = 1