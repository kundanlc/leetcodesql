with cte as (
    select assignment1+assignment2+assignment3 as total
    from Scores
)
select max(total) - min(total) as difference_in_score
from cte