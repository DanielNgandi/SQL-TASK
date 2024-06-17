create table sales(sale_id int, product_id int,sale_date date, sales_amount int);

INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(1,1,'2023-06-01',100);

INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(2,1,'2023/06/02',150);
mysql> INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(3,1,'2023-06-03',200)
    -> ;
Query OK, 1 row affected (0.06 sec)

mysql>  INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(4,1,'2023-06-04',250);
Query OK, 1 row affected (0.10 sec)

mysql>  INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(5,2,'2023-06-01',300);
Query OK, 1 row affected (0.09 sec)

mysql>  INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(6,2,'2023-06-02',350);
Query OK, 1 row affected (0.10 sec)

mysql>  INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(7,2,'2023-06-03',400);
Query OK, 1 row affected (0.06 sec)

mysql>  INSERT INTO sales(sale_id, product_id,sale_date, sales_amount) VALUES(8,2,'2023-06-01',450);

-- code
 SELECT sale_id,product_id,sale_date,sales_amount,AVG(sales_amount) OVER (PARTITION BY product_id ORDER BY sale_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7_day FROM sales;