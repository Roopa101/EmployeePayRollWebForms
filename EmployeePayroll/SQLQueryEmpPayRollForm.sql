create database payrollform
use payrollform

create table  employeepayroll
(
id int identity(1,1) primary  key,
Firstname varchar(50) not null,
LastName varchar(50) not null,
Email varchar(50) not null,
Password varchar(25) not null,
MobileNumber bigint,
RegisteredDate datetime default sysdatetime()

)
select *from employeepayroll

drop table employeepayroll


CREATE TABLE EmployeeLogin 
( 
    id int identity(1,1) primary key not null,
	Email varchar(50),
    Password varchar(25),
	LoginTime datetime default sysdatetime()
);

select *from EmployeeLogin