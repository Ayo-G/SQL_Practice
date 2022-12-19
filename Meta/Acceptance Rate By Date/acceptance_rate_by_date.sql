WITH sent as
(
	SELECT 
        date,
		user_id_receiver,
		user_id_sender
    FROM 
        fb_friend_requests
    WHERE
        action = 'sent'
),
accepted as
(
	SELECT
        date, 
		user_id_receiver,
		user_id_sender
    FROM
        fb_friend_requests
    WHERE
        action = 'accepted'
)
SELECT 
    s.date,
    COUNT(a.user_id_receiver)/cast(COUNT(s.user_id_sender) as decimal) as acceptance_rate
FROM 
    sent s
LEFT JOIN
    accepted a
ON
    s.user_id_receiver = a.user_id_receiver
AND  
	s.user_id_sender = a.user_id_sender
GROUP BY
    s.date