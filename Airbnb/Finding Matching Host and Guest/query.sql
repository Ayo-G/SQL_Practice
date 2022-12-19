select 
    distinct host_id,
    guest_id
from
    airbnb_hosts ah
left join
    airbnb_guests ag
on
    ah.nationality = ag.nationality
and
    ah.gender = ag.gender