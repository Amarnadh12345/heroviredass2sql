create database Salesman;
 create table Salesman(salesman_id int not null, Name varchar(30) not null,
city varchar(30) not null,commission float(20) not null );
insert into Salesman
values(5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13),(5003,'Lauson Hen','San Jose',0.12);
create table  Customer (customer_id int not null,cust_name varchar(30) not null,city varchar(30) not null,grade int ,salesman_id int not null
);
insert into customer
values(3002,'Nick Rimando','New York',100,5001),(3007,'Brad Davis','New York',200,5001),(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),(3004,'Fabian Johnson','Paris',300,5006),(3009,'Geoff Cameron','Berlin',100,5003),(3003,
'Jozy Altidor','Moscow',200,5007),(3001,'Brad Guzan','London', null,5005);


-- Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name, and city
select salesman.name , customer.cust_name, customer.city from salesman,customer where salesman.city=customer.city;

-- Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, and commission
select customer.cust_name,customer.city,salesman.name,salesman.commission from customer inner join salesman on customer.salesman_id=
salesman.salesman_id;

-- Write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, and commission.
select customer.cust_name, customer.city, salesman.name, salesman.commission from customer inner join salesman on customer.salesman_id=
salesman.salesman_id where salesman.commission >0.12; 