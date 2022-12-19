with cte as
(
	select 
        first_name,
        sum(total_order_cost) as total,
        dense_rank() over(order by sum(total_order_cost) desc) as rank_,
        order_date
    from 
        orders o
    left join
        customers c
    on 
        o.cust_id = c.id
    group by
        first_name,
        order_date
)

select
    first_name,
    total,
    order_date
from
    cte
where
    rank_ = 1
    and
    order_date between '2019-02-01' and '2019-05-01'