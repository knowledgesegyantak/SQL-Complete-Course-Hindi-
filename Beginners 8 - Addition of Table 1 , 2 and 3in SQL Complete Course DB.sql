USE [SQLCompleteCourse]
GO
/****** Object:  Table [dbo].[Table1]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1](
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table2]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table2](
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[Amt] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table3]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table3](
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Table1] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 1', N'Last 1', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table1] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 1', N'Last 2', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table1] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 2', N'Last 2', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table2] ([FName], [LName], [Amt]) VALUES (N'Customer 1', N'Last 1', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table2] ([FName], [LName], [Amt]) VALUES (N'Customer 1', N'Last 2', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table2] ([FName], [LName], [Amt]) VALUES (N'Customer 2', N'Last 2', CAST(300 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table3] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 1', N'Last 1', CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table3] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 1', N'Last 2', CAST(200 AS Decimal(18, 0)))
GO
INSERT [dbo].[Table3] ([FirstName], [LastName], [Amount]) VALUES (N'Customer 2', N'Last 2', CAST(300 AS Decimal(18, 0)))
GO
