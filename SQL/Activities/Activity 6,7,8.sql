REM   Script: SQL activity 6,7,8
REM   SQL

CREATE TABLE salesman (  
    salesman_id int,  
    salesman_name varchar2(32),  
    salesman_city varchar2(32),  
    commission int);

SELECT * FROM salesman;

INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);

SELECT * FROM salesman;

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11)  
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14)  
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)  
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)  
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

Select salesman_id , commission FROM salesman where salesman_name ='Paul Adam';

Select salesman_id , salesman_city FROM salesman where salesman_name ='Paul Adam';

Select salesman_id , salesman_city FROM salesman;

Select * FROM salesman where salesman_city ='Paris';

Select salesman_id , commission FROM salesman where salesman_name ='Paul Adam';

ALTER TABLE salesman add grade int;

UPDATE salesman SET grade='100';

SELECT * FROM salesman;

UPDATE salesman SET grade=300 WHERE salesman_name='James Hoog';

UPDATE salesman SET salesman_name='Pierre' WHERE salesman_name='McLyon';

UPDATE salesman SET grade=200 WHERE salesman_city='Rome';

SELECT * FROM salesman;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

SELECT DISTINCT salesman_id from orders  
   select order_no, order_date from orders order by order_date;

SELECT DISTINCT salesman_id from orders;

select order_no, purchase_amount from orders order by purchase_amount DESC;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

select Count(order_no) from orders;

select SUM(purchase_amount) Total Sum from orders ;

select SUM(purchase_amount) Total Sum from orders;

select SUM(purchase_amount) TotalSum from orders;

select SUM(purchase_amount) "Total Sum" from orders;

select AVG(purchase_amount) "Average" from orders;

select AVG(purchase_amount) "Average" from orders;

    select MAX(purchase_amount) "Maximum" from orders;

     select MIN(purchase_amount) "Minimum" from orders;

    select Count(salesman_id) "Total Count" from orders;

select MAX(purchase_amount) "Maximum" from orders;

 select MIN(purchase_amount) "Minimum" from orders;

select Count(salesman_id) "Total Count" from orders;

  select Count(Distinct salesman_id) "Total Count" from orders;

select customer_id, MAX(purchase_amount) from orders;

select customer_id, purchase_amount from orders;

select customer_id, purchase_amount from orders where purchase_amount is MAX;

select customer_id, purchase_amount from orders where MAX(purchase_amount);

select customer_id, MAX(purchase_amount) as "Max Amount" from orders group by customer_id;

select customer_id, MAX(purchase_amount) as "Max Amount" from orders where order_date TO_DATE('2012/04/25');

select customer_id, MAX(purchase_amount) as "Max Amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

select customer_id, salesman_id, MAX(purchase_amount) as "Max Amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

select salesman_id, MAX(purchase_amount) as "Max Amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

