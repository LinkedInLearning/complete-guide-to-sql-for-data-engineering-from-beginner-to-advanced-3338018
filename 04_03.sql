select customer_name, total_amount from customer c left join orders o on c.customer_id = o.customer_id;

select name, total_quantity from orders o left join products p on p.product_id = o.product_id;
