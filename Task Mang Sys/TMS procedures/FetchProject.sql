USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[FetchProject]    Script Date: 4/18/2024 3:10:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[FetchProject]
as
begin
select * from projectnish;
end