create database payrollform
use payrollform

create table  employeepayroll
(
id int identity(1,1) primary  key,
Firstname varchar(50) not null,
LastName varchar(50) not null,
Email varchar(50) not null,
Password varchar(25) not null,
ConfirmPassword varchar(25) not null,
MobileNumber bigint
)
select *from employeepayroll



