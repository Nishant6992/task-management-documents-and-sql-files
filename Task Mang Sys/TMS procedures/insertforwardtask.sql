USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[InsertForwardTask]    Script Date: 4/18/2024 3:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertForwardTask]
    @ForwardTaskName nvarchar(255),
    @ForwardTaskPriority varchar(10),
    @ForwardTaskDate varchar(10),
    @ForwardTaskDeadlineDate varchar(10),
    @ForwardTaskDescription nvarchar(MAX),
    @EmployeeID int,
    @Comments nvarchar(MAX),
	@fileUpload varchar(255)
AS
BEGIN
  
    -- Insert the forward task
    INSERT INTO ForwardTask (FileUpload,Comments, ForwardTaskName, ForwardTaskPriority, ForwardTaskDate, ForwardTaskDeadlineDate, ForwardTaskDescription, EmployeeID)
    VALUES (@fileUpload,@Comments, @ForwardTaskName, @ForwardTaskPriority, @ForwardTaskDate, @ForwardTaskDeadlineDate, @ForwardTaskDescription, @EmployeeID);

	UPDATE forwardtask
SET ForwardTaskCount = CASE 
                           WHEN ForwardTaskCount IS NULL THEN 1  -- If no forward tasks exist, start from 1
                           ELSE ForwardTaskCount + 1  -- Increment forward task count by one
                       END
WHERE EmployeeID = @EmployeeID;
END