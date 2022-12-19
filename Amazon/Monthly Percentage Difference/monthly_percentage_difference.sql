WITH monthly_revenue AS 
(
    select 
        TO_CHAR(created_at, 'YYYY-MM') as year_month,
        SUM(value) as revenue
    from 
		sf_transactions
    group by 
		1
    order by 
		1
),

monthly_revenue_delayed AS 
(
    select 
        year_month, 
        revenue,
        LAG(revenue, 1) OVER (ORDER BY year_month) as previous_revenue
    from 
		monthly_revenue
)
                    
SELECT 
    year_month,
    ROUND((((revenue - previous_revenue) / previous_revenue) * 100),2) as revenue_
FROM 
	monthly_revenue_delayed
