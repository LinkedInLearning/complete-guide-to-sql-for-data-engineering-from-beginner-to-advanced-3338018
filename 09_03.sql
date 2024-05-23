create role mike with login

create role tom with login password 'tom@123';

create role John with login password 'John@123' superuser

create role John1 with login password 'John@123' createdb;

create role John2 with login password 'John@123' createrole

create role John3 with login password 'John@123' valid until '2024-05-31'

create role John4 with login password 'John@123' connection limit 10

create role John5 with login password 'John@123' in role John4

create user John6 with password 'John@123'