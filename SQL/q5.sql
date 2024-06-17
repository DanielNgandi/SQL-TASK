create table employees(employee_id int, employee_name varchar(255),department_id int, salary int);
insert into employees(employee_id, employee_name,department_id, salary) values (2, 'jane smith', 1, 95000);

insert into employees(employee_id, employee_name,department_id, salary) values (3, 'alice brown', 2,120000);


insert into employees(employee_id, employee_name,department_id, salary) values (4, 'bob johnson', 2,110000);

SELECT MAX(salary) AS second_highest_salary FROM employees WHERE salary < (SELECT MAX(salary) FROM employees);
