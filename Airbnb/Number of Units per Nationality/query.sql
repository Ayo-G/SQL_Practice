  ``` sql
  
  with a_host as
     (select distinct
         host_id,
         age,
         nationality
      from
         airbnb_hosts)

select
     a.nationality,
     count(unit_id) as no_of_apartment
from 
    a_host a
left join
    airbnb_units au
on 
    a.host_id = au.host_id
where
    a.age < 30
and
    au.unit_type = 'Apartment'
group by 
     a.nationality
order by
     no_of_apartment desc;
  
  ```
