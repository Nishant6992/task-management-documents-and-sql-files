USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[InsertComment]    Script Date: 4/18/2024 3:05:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertComment]
    @comment NVARCHAR(MAX),
    @eid INT
AS
BEGIN
    UPDATE EmployeeNish
    SET Comments = @comment
    WHERE ID = @eid;
END