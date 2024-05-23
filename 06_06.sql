select customer_id, order_id, total_amount, ordeR_timestamp,

sum(total_amount) over(partition by customer_id order by order_timestamp) as running_total

from orders;

select product_id, order_timestamp,total_quantity,

sum(total_quantity) over(partition by product_id order by order_timestamp) as running_qty

from orders;
