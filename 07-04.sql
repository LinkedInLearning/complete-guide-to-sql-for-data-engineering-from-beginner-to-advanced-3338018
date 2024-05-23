create procedure add_category(cat_id int, cat_name varchar)
language plpgsql
AS
$$
BEGIN
 insert into categories values (cat_id, cat_name);
END;
$$;

Call add_category(6, 'Fashion')

select * from categories

drop procedure add_category