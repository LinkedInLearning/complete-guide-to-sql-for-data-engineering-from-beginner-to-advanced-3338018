select current_time;
select current_timestamp;

select localtime;

select localtimestamp;

select extract(hour from order_timestamp) from orders;


select extract(minute from order_timestamp) from orders;


select extract(second from order_timestamp) from orders;

select date_trunc('day', order_timestamp) from orders;

select age(order_timestamp) from orders;

select age(delivery_timestamp, order_timestamp) from orders;

select current_timestamp at Time Zone 'America/New_York';
