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
