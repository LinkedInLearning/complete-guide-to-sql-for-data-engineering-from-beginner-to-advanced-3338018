select current_date;

select extract(Day from current_date);


select extract(Month from current_date);

select extract(Year from current_date);

select date_part('day', current_date);
select date_part('month', current_date);
select date_part('year', current_date);

select date_trunc('month', current_date);

select date_trunc('year', current_date);

select age(timestamp '2024-01-01');

select age( timestamp '2024-01-01', timestamp '2024-01-31');

select to_date('01/01/2024', 'DD/MM/YYYY');

select to_char(current_date, 'DD-MM-YYYY');




