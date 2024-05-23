explain analyze select * from orders where order_id=1

select * from pg_stat_user_indexes where relname ='orders'

explain  select * from orders where order_id=1