create table orders(orderId int, customerId int, orderDate date);
insert into orders(orderId, customerId, orderDate) VALUES (2043, 1, '2023-06-01')
insert into orders(orderId, customerId, orderDate) VALUES (2044, 2, '2023-06-02')
insert into orders(orderId, customerId, orderDate) VALUES (2045, 3, '2023-06-03')
insert into orders(orderId, customerId, orderDate) VALUES (2046, 1, '2023-06-04')

SELECT * FROM orders
begin transaction;
UPDATE orders set orderDate='2023-07-23' where orderId = 2045;
commit transaction;
