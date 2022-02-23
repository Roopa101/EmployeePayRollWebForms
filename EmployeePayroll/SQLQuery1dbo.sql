Create PROCEDURE [dbo].[spInsertValue]
@fname varchar(50),
@lname varchar(50),
@email varchar(50),
@pswrd varchar(50),
@phno bigint

AS
BEGIN
insert into employeepayroll (Firstname,LastName,Email,Password,MobileNumber) values 
(
 @fname,@lname,@email,@pswrd,@phno
)
END

Alter PROCEDURE sp_Login
(
    @EmailId varchar(50),
    @Password varchar(50)
)
AS
declare @count int
begin try 
select @count = count (Email) from employeepayroll where (Email = @EmailId and Password=@Password)
if(@count=1)
begin
insert into EmployeeLogin (Email,Password) values (@EmailId,@Password)
select * from employeepayroll where (Email = @EmailId and Password=@Password)
end
else
begin
RAISERROR(1,401, 16,'User not exist')

end
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE()
 as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch

create PROCEDURE sp_Register
@fname varchar(50),
@lname varchar(50),
@email varchar (50),
@pswrd varchar(50),
@phno bigint
AS
BEGIN
	Declare @Count int
	Declare @ReturnCode int

	Select @Count = COUNT(Email)
	from employeepayroll where Email=@email
	if @Count>0
	begin 
		Set @ReturnCode=-1
	End
	else
	begin
		Set @ReturnCode=1
	insert into employeepayroll (FirstName,LastName,Email,Password,MobileNumber) values
	(
	@fname,@lname,@email,@pswrd,@phno
	)
	end 
	select @ReturnCode as ReturnValue
	end

alter Procedure sp_Login
@email varchar (50),
@pswrd varchar(50)
as
Begin 
	Declare @Count int
	select @Count = count (Email) from employeepayroll where (Email=@email and Password=@pswrd)
	if(@Count =1)
	Begin
		Select 1 as ReturnCode
	End
	Else
	Begin
		Select -1 as ReturnCode
	End
End

create PROCEDURE sp_Form
@Name varchar(50),
@Profile_Image varchar(50),
@Gender varchar(50),
@Department varchar(50),
@Salary varchar (50),
@Start_Date	 varchar(50),
@Notes varchar(50)
AS
BEGIN
insert into EmployeeWebForm(Name,Profile_Image,Gender,Department,Salary,Start_Date,Notes) values
(
@Name,@Profile_Image,@Gender,@Department,@Salary,@Start_Date,@Notes
)
END
GO