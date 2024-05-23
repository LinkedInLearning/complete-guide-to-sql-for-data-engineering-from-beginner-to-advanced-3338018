select order_id, customer_id, order_timestamp, total_amount,

avg(total_amount) over (partition by customer_id order by order_timestamp
	rows between 1 preceding and current row) as mvg_avg
	from orders