select * from orders where customer_id =1  order by order_timestamp desc
create index idx_cust on orders(customer_id, order_timestamp)


select * from orders where customer_id =1  order by order_timestamp desc limit 2
