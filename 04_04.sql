select customer_name, total_quantity from customer c full outer join orders o on c.customer_id = o.customer_id;

select customer_name, name, total_quantity from customer c full outer join orders o on c.customer_id = o.customer_id full outer join
products p on p.product_id = o.product_id ;
