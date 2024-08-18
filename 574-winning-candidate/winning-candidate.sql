with cte as(
    select c.name, count(1) as total_vote
    from Candidate c join Vote v on c.id = v.candidateId
    group by c.name
)
select name
from cte 
where total_vote =(select max(total_vote) from cte);