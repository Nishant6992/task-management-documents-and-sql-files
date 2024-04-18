USE [intern2022]
GO

ALTER TABLE [dbo].[task] DROP CONSTRAINT [FK_Task_EmployeeID]
GO

ALTER TABLE [dbo].[task] DROP CONSTRAINT [DF__task__isDeleted__76CD3E06]
GO

/****** Object:  Table [dbo].[task]    Script Date: 4/18/2024 3:14:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[task]') AND type in (N'U'))
DROP TABLE [dbo].[task]
GO

/****** Object:  Table [dbo].[task]    Script Date: 4/18/2024 3:14:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[task](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[Start_Date] [nvarchar](50) NULL,
	[Deadline_Date] [nvarchar](50) NULL,
	[Task_priority] [varchar](50) NULL,
	[Task_Descp] [nvarchar](max) NULL,
	[Project_id] [int] NOT NULL,
	[projectname] [nvarchar](max) NULL,
	[filepath] [varchar](max) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[task] ADD  CONSTRAINT [DF__task__isDeleted__76CD3E06]  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[task]  WITH CHECK ADD  CONSTRAINT [FK_Task_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeNish] ([ID])
GO

ALTER TABLE [dbo].[task] CHECK CONSTRAINT [FK_Task_EmployeeID]
GO


