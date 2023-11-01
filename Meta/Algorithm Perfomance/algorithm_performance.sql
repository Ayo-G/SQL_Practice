WITH condition AS
(
    SELECT
        search_id,
        CASE
            WHEN clicked = 0
            THEN 1
            WHEN clicked = 1 AND search_results_position NOT IN (1, 2, 3)
            THEN 2
            WHEN clicked = 1 AND search_results_position IN (1, 2, 3)
            THEN 3
        END AS rating
    FROM 
        fb_search_events
)

SELECT 
    search_id,
    max(rating) AS highest_rating
FROM 
    condition
GROUP BY
    1