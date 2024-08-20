select d.dept_name, count(s.student_id) as student_number
from Student s
right join Department d
on s.dept_id = d.dept_id
group by d.dept_name
order by 2 desc , 1;