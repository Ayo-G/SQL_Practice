With load_p as 
(
	Select 
        user_id,
        date(timestamp) as date,
        MAX(timestamp) as pl
    from 
		facebook_web_log
    where 
		action = 'page_load'
    group by
		1, 2
),

exit_p as 
(
	Select
        user_id, 
        date(timestamp) as date,
        MIN(timestamp) as pe
    from 
		facebook_web_log
    where 
		action = 'page_exit'
    group by
		1, 2
)

Select 
     load_p.user_id, 
     AVG(pe - pl) as avg_session
from
     load_p
inner join
     exit_p
on
    load_p.user_id = exit_p.user_id
and 
    load_p.date = exit_p.date
group by 1;
