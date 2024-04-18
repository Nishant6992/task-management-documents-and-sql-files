USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployeeNish]    Script Date: 4/18/2024 3:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[InsertEmployeeNish]
@name varchar(50),
@gender varchar(10),
@emailid varchar(50),
@state varchar(50),
@MobileNumber varchar(50),
@age int,
@address varchar(50),
@password nvarchar(50),
@role nvarchar(50)
as
begin
insert into EmployeeNish(Name,gender,EmailId,State,MobileNumber,Age,Address,Password,role) values (@name,@gender,@emailid,@state,@MobileNumber,
@age,@address,@password,@role)
end