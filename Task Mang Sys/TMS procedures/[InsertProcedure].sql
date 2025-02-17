USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[InsertProcedure]    Script Date: 4/18/2024 3:12:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[InsertProcedure]
    @projectname varchar(100),
    @project_startDate varchar(100),
    @project_endDate varchar(100),
    @project_Description nvarchar(MAX),
    @isDeleted bit = 0,  -- Providing default value for isDeleted parameter
	@isActive bit =1,
	@empid int
	
as 
begin   
    INSERT INTO ProjectNish(projectname, project_startDate, project_endDate, project_Description, isDeleted,isActive,Employee_id)
     VALUES (@projectname, @project_startDate, @project_endDate, @project_Description, @isDeleted,@isActive,@empid)
end