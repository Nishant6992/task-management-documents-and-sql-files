USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[FetchTask]    Script Date: 4/18/2024 3:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[FetchTask]
as 
begin
 SELECT CONCAT(TaskID, ' ', Task_Descp) AS FullName from Task
end
