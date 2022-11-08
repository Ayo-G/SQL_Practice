``` sql

WITH combined as
    (SELECT
        eu.date,
        eu.consumption
    FROM
        fb_eu_energy eu
        
    UNION
    
    SELECT
        na.date,
        na.consumption
    FROM
        fb_na_energy na
        
    UNION
    
    SELECT
        asi.date,
        asi.consumption
    FROM
        fb_asia_energy asi),

RANKED as
    (SELECT 
        date,
        sum(consumption) as tot_energy,
        dense_rank() over(order by sum(consumption) desc) as rank_
    FROM 
        combined
    GROUP BY
        date)

SELECT
    date,
    tot_energy
FROM
    ranked
WHERE
    rank_ = 1;

```
