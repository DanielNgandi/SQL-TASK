 create table customers(customerId int, customerName varchar(255));
insert into customers(customerId, customerName) values(1,'alice');
 insert into customers(customerId, customerName) values(2,'bob');
insert into customers(customerId, customerName) values(3,'charlie');
select * FROM customers;
 
 create table sales(saleId int, customerId int, saleAmount int)
insert into sale(saleId, customerId, saleAmount) values(1, 1, 500);
insert into sale(saleId, customerId, saleAmount)values(2,1,300);
insert into sale(saleId, customerId, saleAmount) values(3,2,400);
insert into sale(saleId, customerId, saleAmount)values(4,2,200);

SELECT* from sale;

SELECT c.customerId, c.customerName,(SELECT SUM(s.saleAmount)FROM sale s WHERE s.customerId = c.customerId) AS total_sale FROM customers c;


