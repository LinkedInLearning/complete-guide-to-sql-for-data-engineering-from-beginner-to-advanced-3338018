create index idx_customer_email on customer(email);

create index idx_prod_cat on products(category_id)

create unique index idx_prod_name on products(name)

create index idx_cust_order on orders(customer_id, order_timestamp)