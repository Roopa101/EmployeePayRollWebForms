USE [payrollform]
GO
/****** Object:  StoredProcedure [dbo].[spInsert]    Script Date: 17-02-2022 08:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spInsert]
@fname varchar(50),
@lname varchar(50),
@email varchar(50),
@pswrd varchar(50),
@cpswrd varchar(50),
@phno bigint
AS
BEGIN
insert into employeepayroll values
(
@fname,@lname,@email,@pswrd,@cpswrd,@phno
)
END
