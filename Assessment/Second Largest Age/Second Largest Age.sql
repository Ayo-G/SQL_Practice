with s_age as 
(
    select
        sibling_rank,
        sibling_name,
        15 + sum(age_diff) over(order by sibling_rank) as age
from 
    siblings
),

age_rank as
(
    select 
        *,
        dense_rank() over(order by age desc) as rank_
    from 
        s_age
)

select 
    sibling_rank,
    sibling_name,
    age
from
    age_rank
where 
    rank_ = 2