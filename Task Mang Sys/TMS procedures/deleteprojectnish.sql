USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[DeleteProjectNish]    Script Date: 4/18/2024 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[DeleteProjectNish]
    @projectid INT
    
AS
BEGIN   
    DELETE FROM projectnish WHERE Project_id =@projectid;
END
