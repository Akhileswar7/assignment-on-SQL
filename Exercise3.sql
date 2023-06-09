create table customer(customer_id int,
cust_name varchar(30),
city varchar(30),
grade int,
salesman_id int);

insert into customer values(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",null,5005);

create table salesman(salesman_id int,
name varchar(30),
city varchar(30),
commission float);
select * from salesman;

insert into salesman values(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

-- Write a SQL query to find those customers with a grade less than 100.
-- It should return cust_name, customer city, grade, salesman, and salesman city.
-- The result should be ordered by ascending customer_id.

select c.cust_name,c.city,c.grade,s.name AS "Salesman", c.city 
from customer c left join salesman s 
On c.salesman_id=s.salesman_id
where c.grade<100
ORDER BY c.customer_id;