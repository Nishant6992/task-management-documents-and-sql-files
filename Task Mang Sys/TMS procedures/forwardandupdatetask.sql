USE [intern2022]
GO
/****** Object:  StoredProcedure [dbo].[ForwardandUpdateTask]    Script Date: 4/18/2024 3:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ForwardandUpdateTask]
@taskid int
as
begin
select * from Task where TaskId = @taskid
end
