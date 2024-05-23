select customer_id,

row_number() over (partition by customer_id order by total_amount desc) as Order_Rank,
total_amount
from orders
