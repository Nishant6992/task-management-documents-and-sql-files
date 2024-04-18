USE [intern2022]
GO

ALTER TABLE [dbo].[ProjectNish] DROP CONSTRAINT [FK__ProjectNi__Emplo__3F47FEF2]
GO

ALTER TABLE [dbo].[ProjectNish] DROP CONSTRAINT [DF__ProjectNi__isAct__3E53DAB9]
GO

ALTER TABLE [dbo].[ProjectNish] DROP CONSTRAINT [DF__ProjectNi__isDel__3D5FB680]
GO

/****** Object:  Table [dbo].[ProjectNish]    Script Date: 4/18/2024 3:15:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectNish]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectNish]
GO

/****** Object:  Table [dbo].[ProjectNish]    Script Date: 4/18/2024 3:15:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProjectNish](
	[Project_id] [int] IDENTITY(1,1) NOT NULL,
	[projectname] [nvarchar](100) NULL,
	[project_startDate] [varchar](100) NULL,
	[project_endDate] [varchar](100) NULL,
	[project_Description] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
	[isActive] [bit] NULL,
	[Employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProjectNish] ADD  DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[ProjectNish] ADD  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[ProjectNish]  WITH CHECK ADD FOREIGN KEY([Employee_id])
REFERENCES [dbo].[EmployeeNish] ([ID])
GO


