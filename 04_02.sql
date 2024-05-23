select name, description, total_amount from orders o INNER JOIN Products p on p.product_id = o.product_id;

select customer_name, total_amount from orders o join customer c on c.customer_id = o.customer_id  ;
