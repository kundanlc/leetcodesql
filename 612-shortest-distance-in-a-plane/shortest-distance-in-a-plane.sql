select top 1
round(sqrt(square(t1.x - t2.x) + square(t1.y-t2.y)),2) as shortest
from Point2D t1
cross join Point2D t2
where sqrt(square(t1.x - t2.x) + square(t1.y-t2.y)) > 0
order by 1