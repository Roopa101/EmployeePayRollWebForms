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

CREATE TABLE EmployeeWebForm
( 
    id int identity(1,1) primary key not null,
	Name varchar(50) not null,
	Gender varchar(50),
	Department varchar(50),
	Salary varchar(50),
	Start_date varchar(50),
	Notes varchar(50),
	RegisteredDate datetime default sysdatetime()
);


select *from EmployeeWebForm
drop table EmployeeWebForm


Alter TABLE EmployeeWebForm
Add Profile_Image varchar(50);
