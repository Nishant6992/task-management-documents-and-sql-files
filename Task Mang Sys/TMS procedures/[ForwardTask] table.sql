USE [intern2022]
GO

ALTER TABLE [dbo].[ForwardTask] DROP CONSTRAINT [DF__ForwardTa__isPen__07C2BFDE]
GO

ALTER TABLE [dbo].[ForwardTask] DROP CONSTRAINT [DF_ForwardTaskCount]
GO

/****** Object:  Table [dbo].[ForwardTask]    Script Date: 4/18/2024 3:16:20 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForwardTask]') AND type in (N'U'))
DROP TABLE [dbo].[ForwardTask]
GO

/****** Object:  Table [dbo].[ForwardTask]    Script Date: 4/18/2024 3:16:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ForwardTask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ForwardTaskCount] [int] NULL,
	[ForwardTaskName] [nvarchar](255) NULL,
	[ForwardTaskPriority] [varchar](10) NULL,
	[ForwardTaskDate] [varchar](10) NULL,
	[ForwardTaskDeadlineDate] [varchar](10) NULL,
	[ForwardTaskDescription] [nvarchar](max) NULL,
	[EmployeeID] [int] NULL,
	[Comments] [nvarchar](max) NULL,
	[FileUpload] [varchar](255) NULL,
	[isPending] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ForwardTask] ADD  CONSTRAINT [DF_ForwardTaskCount]  DEFAULT ((0)) FOR [ForwardTaskCount]
GO

ALTER TABLE [dbo].[ForwardTask] ADD  DEFAULT ((1)) FOR [isPending]
GO


