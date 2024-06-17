create table customers(customerId int, customerName varchar(255));
insert into customers(customerId, customerName) values(1,'alice');
 insert into customers(customerId, customerName) values(2,'bob');
insert into customers(customerId, customerName) values(3,'charlie');




create table categories(categoryId int, categoryName varchar(255));

insert into categories(categoryId, categoryName) values(1,'electronics');

insert into categories(categoryId, categoryName) values(2,'clothing');
insert into categories(categoryId, categoryName) values(3,'groceries');



create table purchases(purchaseId int, customerId int, categoryId int);


insert into purchases(purchaseId, customerId, categoryId) value (1,1,1);

insert into purchases(purchaseId, customerId, categoryId) value (2,1,2);


insert into purchases(purchaseId, customerId, categoryId) value (3,1,3);


insert into purchases(purchaseId, customerId, categoryId) value (4,2,1);

 insert into purchases(purchaseId, customerId, categoryId) value (5,2,2);

 SELECT customerName FROM customers c WHERE customerId IN (SELECT customerId FROM purchases GROUP BY customerId HAVING COUNT(DISTINCT categoryId) = (SELECT COUNT(*) FROM categories));
