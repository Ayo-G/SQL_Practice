``` sql


WITH users AS 
    (SELECT 
        user1,
        COUNT(*)
    FROM facebook_friends
    GROUP BY user1

    UNION

    SELECT
        user2,
        COUNT(*)
    FROM facebook_friends
    GROUP BY user2),

pop as 
    (SELECT 
        user1,
        SUM(count) as popularity,
        count(user1) over() as tot_u
    FROM users
    GROUP BY user1
    ORDER BY user1)

SELECT
    user1,
    ((popularity / tot_u) * 100) as popularity_percentage
FROM
    pop


```
