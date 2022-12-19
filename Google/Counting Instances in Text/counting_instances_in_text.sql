with bull as
(
	select
        'bull' as text,
        count(contents) as occurence
    from 
		google_file_store
    where 
        contents like ' bull %' 
        or contents like '% bull %'
),
bear as 
(
	select
        'bear' as text,
        count(contents) as occurence
    from 
		google_file_store
    where 
        contents like ' bear %' 
        or contents like '% bear %'
)

select 
    *
from
    bull
union
select
    *
from
    bear;