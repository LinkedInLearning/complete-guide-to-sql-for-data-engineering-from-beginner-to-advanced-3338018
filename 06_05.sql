select customer_id, order_id, order_timestamp,
lag(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as prev_order
from orders;

select customer_id, order_id, order_timestamp,
lead(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as next_order
from orders;
