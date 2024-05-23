select count(customer_id) as Total_Row_Count from customer;

select count(*) as Total_Row_Count from customer;

select count( distinct customer_id) as Total_Row_Count from customer;

select sum(total_amount) from orders;

select max(total_amount) from orders;

select min(total_amount) from orders;


select avg(total_amount) from orders;
select stddev(total_amount) from orders;
