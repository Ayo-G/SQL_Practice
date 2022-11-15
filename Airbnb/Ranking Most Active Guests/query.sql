``` sql

SELECT 
    DENSE_RANK() OVER(ORDER BY SUM(n_messages) DESC) as rank_,
    id_guest,
    SUM(n_messages) as total_messages
FROM 
    airbnb_contacts
GROUP BY
    id_guest
ORDER BY
    rank_;

```
