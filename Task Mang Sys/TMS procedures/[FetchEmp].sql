USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[FetchEmp]    Script Date: 4/18/2024 3:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[FetchEmp]
    @projectname NVARCHAR(255)
AS
BEGIN
    SELECT CONCAT(e.ID, ' ', e.Name) AS FullName
    FROM EmployeeNish e
    INNER JOIN projectnish p ON p.Employee_id = e.ID
    WHERE p.projectname = @projectname;
END