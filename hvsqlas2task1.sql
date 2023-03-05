create database workertable
create table Worker(
Worker_ID int not null,
First_Name varchar(30) not null,
Last_Name varchar(30) not null,
Salary int not null,
Joining_Date varchar(30) not null,
Department varchar(30) not null);
insert into worker
values(001,'Monika','Arora',100000,'2014-02-20 09:00:00','HR'),(002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin'),(
003,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR'),(004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin'),
(005,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin'),(006,'Vipul','Diwan',200000,'2014-06-11 09:00:00','Account'),
(007,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),(008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

-- Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select First_Name  as '<WORKER_NAME>' from  Worker  ;

-- Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
select position('a' IN First_Name) as MATCHPOSTION from worker where First_Name='Amitabh';

-- Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
update worker set First_Name = upper(First_Name); 
select First_Name from workertable.worker;

-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by First_Name asc;

-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by First_Name asc , Department desc;

-- Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from the Worker table
select * from worker where First_Name='vipul'||'Satish';

-- Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”
select * from worker where Department='Admin';

-- Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’
select * from worker where First_Name like '%a%';

-- Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000
select * from worker where Salary between 100000 and 500000;

-- Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
select * from worker where Right(First_Name,1)='h' AND length(First_Name)=6;

-- Write an SQL query to print details of the Workers who have joined in Feb’2014
select * from worker where Joining_Date like '2014-02%';

-- Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
select First_Name from worker where Salary >=50000 and Salary<=100000;

