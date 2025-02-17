USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[taskprocedure]    Script Date: 4/18/2024 3:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[taskprocedure]
    @EmployeeID INT,
    @Start_Date NVARCHAR(50),
    @Deadline_Date NVARCHAR(50),
    @Task_priority VARCHAR(50),
    @Task_Descp NVARCHAR(MAX),
    @Project_id INT,
    @projectname NVARCHAR(MAX),
	@filepath varchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO task (EmployeeID, Start_Date, Deadline_Date, Task_priority, Task_Descp, Project_id, projectname,filepath)
    VALUES (@EmployeeID, @Start_Date, @Deadline_Date, @Task_priority, @Task_Descp, @Project_id, @projectname,@filepath);
END;