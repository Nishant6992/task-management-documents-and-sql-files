USE [intern2022]
GO

/****** Object:  Table [dbo].[EmployeeNish]    Script Date: 4/18/2024 3:14:46 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeNish]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeNish]
GO

/****** Object:  Table [dbo].[EmployeeNish]    Script Date: 4/18/2024 3:14:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeNish](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[gender] [varchar](10) NULL,
	[EmailId] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[MobileNumber] [varchar](50) NULL,
	[Age] [int] NULL,
	[Address] [varchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[role] [varchar](50) NULL,
	[confirmpassword] [nvarchar](50) NULL,
	[comments] [nvarchar](max) NULL,
 CONSTRAINT [empid_prmrykey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


