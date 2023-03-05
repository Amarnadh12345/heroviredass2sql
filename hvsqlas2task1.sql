-- create database 
-- create table Worker(
-- Worker_ID int not null,
-- First_Name varchar(30) not null,
-- Last_Name varchar(30) not null,
-- Salary int not null,
-- Joining_Date varchar(30) not null,
-- Department varchar(30) not null);
-- insert into worker
-- values(001,'Monika','Arora',100000,'2014-02-20 09:00:00','HR'),(002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin'),(
-- 003,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),(004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
-- (005,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),(006,'Vipul','Diwan',200000,'2014-06-11 09:00:00','Account'),
-- (007,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),(008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

-- -- Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
-- select First_Name  as '<WORKER_NAME>' from  Worker  ;

-- --Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
-- select position('a' IN First_Name) as MATCHPOSTION from worker where First_Name='Amitabh';

-- --Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
select First_Name ,Repalce(First_Name,'a','A') from worker;