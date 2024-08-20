with cte as (
    select *, max(salary) over(partition by company_id) as max_salary
    from Salaries
)
select 
company_id,
employee_id,
employee_name,
round(case when max_salary < 1000 then salary
    when max_salary >= 1000 and max_salary <= 10000 then salary * 0.76
    else salary * 0.51 end, 0) as salary
from cte;