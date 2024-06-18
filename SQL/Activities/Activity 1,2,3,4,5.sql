REM   Script: Activity 1,2,3,4,5
REM   Activity 1,2,3,4,5

CREATE TABLE salesman (salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20,Commision int));

DESCRIBE salesman


CREATE TABLE salesman (salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20,Commision int));

DESCRIBE salesman


CREATE TABLE salesman (salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20,Commision int));

DESCRIBE salesman


CREATE TABLE salesman (salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20,Commision int));

DESCRIBE salesman


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

