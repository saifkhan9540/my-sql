#question :1	Create a database named company and a table named employees with the following fields:
create database company;
use company;

#•	id (INT, Primary Key, Auto Increment)
-- •	name (VARCHAR(100))
-- •	position (VARCHAR(100))
-- •	salary (DECIMAL(10,2))
-- •	date_of_joining (DATE);

create table employees(
id int not null primary key,
name varchar(100),
position varchar (100),
salary decimal(10,2),
date_of_joining date
);

#question 2:	Insert the following data into the employees table.
insert into employees (id,name,position,salary,date_of_joining)values
(1,"John Doe", "Manager", 55000.00, "2020-01-15"),
(2,"Jane Smith", "Developer", 48000.00, "2019-07-10"),
(3,"Alice Johnson", "Designer", 45000.00, "2021-03-22"),
(4,"Bob Brown", "Developer", 50000.00, "2018-11-01");

#question 3:	Write a query to retrieve all employees who are Developers.
select * from employees where position="developer";

#question 4:	Write a query to update the salary of Alice Johnson to 46000.00.
set sql_safe_updates=0;
update employees set salary	=46000 where name ="alice johnson";

#question 5: 	Write a query to delete the employee record for Bob Brown.
delete from employees where name ="bob  brown";

#question 6:	Write a query to find the employees who have a salary greater than 48000.
select * from employees where salary > 48000;

#question 7:	Write a query to add a new column email to the employees table.
alter table employees
add email varchar (50);

#question 8.	Write a query to update the email for John Doe to john.doe@company.com.
update employees set email= "john.doe@company.com." where name ="john doe";