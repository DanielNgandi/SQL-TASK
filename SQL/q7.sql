create table employes(employeeId int, employeeName varchar(255), departmentId int, salary int);
insert into employes(employeeId, employeeName, departmentId, salary) values(1, 'john doe', 1, 100000);
insert into employes(employeeId, employeeName, departmentId, salary) values(2, 'jane smith', 1, 95000);
insert into employes(employeeId, employeeName, departmentId, salary) values(3, 'alice brown', 1, 90000);
insert into employes(employeeId, employeeName, departmentId, salary) values(4, 'bob johnson', 1, 85000);
insert into employes(employeeId, employeeName, departmentId, salary) values(5, 'charlie black', 1, 80000);
insert into employes(employeeId, employeeName, departmentId, salary) values(6, 'david green', 1, 75000);
insert into employes(employeeId, employeeName, departmentId, salary) values(7, 'eve white', 2, 110000);

select * from employes

create table departments(departmentId int, departmentName varchar(255));
insert into departments(departmentId, departmentName) values(1,'HR');
insert into departments(departmentId, departmentName) values(2,'Finance');
select departments.departmentName, avg(employes.salary) as avarageSalary from employes join departments on departments.departmentId =employes.departmentId group by departmentName having COUNT (*)>5;

