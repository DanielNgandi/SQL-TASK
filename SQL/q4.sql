create table products(productId int, productName varchar(255), price int);

insert into products(productId, productName, price)values (1, 'laptop', 1000);

insert into products(productId, productName, price)values (2, 'laptop', 1200);

insert into products(productId, productName, price)values (3, 'phone', 800);
insert into products(productId, productName, price)values (4, 'tablet', 600);


insert into products(productId, productName, price)values (5, 'tablet', 650);

 SELECT DISTINCT p1.productName FROM products p1 JOIN products p2 ON p1.productName = p2.productName AND p1.price <> p2.price;
