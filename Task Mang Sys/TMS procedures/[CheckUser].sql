USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[CheckUser]    Script Date: 4/18/2024 3:12:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[CheckUser] ( 
    @email varchar(50)
) 
AS 
BEGIN 
    SELECT  password, role,ID
    FROM EmployeeNish
    WHERE EmailId = @email;
END; 