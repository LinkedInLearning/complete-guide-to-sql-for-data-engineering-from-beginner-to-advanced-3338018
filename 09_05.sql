create role sales_team

create role admins

grant select on all tables in schema public to sales_team

grant all privileges on all tables in schema public to admins

create role sales_managers in role sales_team