USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTaskNish]    Script Date: 4/18/2024 3:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[DeleteTaskNish]
    @TaskID INT
    
AS
BEGIN   
    DELETE FROM Task WHERE TaskID = @TaskID;
END
