with cte as(
select
question_id,
sum(case when action = 'answer' then 1 else 0 end) * 1.0 /
sum(case when action = 'show' then 1 else 0 end) as rate
from SurveyLog
group by question_id
)
select top 1
question_id as survey_log
from cte
order by rate desc, question_id
