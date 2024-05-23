select order_id, customer_id, order_timestamp,
row_number() over (partition by customer_id order by order_timestamp asc) as order_seq_num

from orders
