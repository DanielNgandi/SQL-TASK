create database assgn;
use assgn;
create table employees(employee_id int, employee_name varchar(255),department_id int, salary int);
insert into employees(employee_id, employee_name,department_id, salary) values (2, 'jane smith', 1, 95000);

insert into employees(employee_id, employee_name,department_id, salary) values (3, 'alice brown', 2,120000);


insert into employees(employee_id, employee_name,department_id, salary) values (4, 'bob johnson', 2,110000);


insert into employees(employee_id, employee_name,department_id, salary) values (5, 'charlie black', 3,80000);
 SELECT * FROM employees ORDER BY department_id, salary DESC;