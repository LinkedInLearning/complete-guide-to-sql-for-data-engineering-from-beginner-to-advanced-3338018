select customer_id,
RANK() over (partition by customer_id order by total_amount desc) as order_rank,
total_amount
from orders
