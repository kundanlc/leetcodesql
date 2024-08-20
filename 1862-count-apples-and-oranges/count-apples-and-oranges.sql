select sum(COALESCE(b.apple_count,0) + COALESCE(c.apple_count,0)) as apple_count,
        sum(COALESCE(b.orange_count,0) + COALESCE(c.orange_count,0)) as orange_count
from Boxes b
left join Chests c
on b.chest_id = c.chest_id