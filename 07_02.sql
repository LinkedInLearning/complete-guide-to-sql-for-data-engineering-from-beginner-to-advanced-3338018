create view customer_order_summary AS

select customer_id,
count(order_id),
sum(total_amount)
from
orders
group by customer_id

select * from customer_order_summary where customer_id =1