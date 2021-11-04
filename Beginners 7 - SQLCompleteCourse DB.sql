

--DB NAME - "SQLCompleteCourse"

CREATE TABLE [dbo].[DimCustomer](
	[CustomerKey] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Mobile] [varchar](10) NOT NULL,
	[BirthDate] [datetime] NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProduct]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProduct](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Style] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStore]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStore](
	[StoreId] [int] NOT NULL,
	[StoreNo] [varchar](50) NULL,
	[Manager] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimStore] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactSales]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactSales](
	[SalesKey] [int] NOT NULL,
	[SalesNo] [varchar](50) NULL,
	[CustomerKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[StoreKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[PaymentType] [varchar](50) NULL,
	[SalesQty] [varchar](50) NULL,
	[SalesAmount] [varchar](50) NULL,
 CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
(
	[SalesKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (1, N'Customer 1', N'LN 1', N'M', N'xxxxxxxxxx', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Customer 1@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (2, N'Customer 4', N'LN 4', N'M', N'xxxxxxxxxx', NULL, N'Customer 4@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (3, N'Customer 5', N'LN 5', N'M', N'xxxxxxxxxx', NULL, N'Customer 5@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (4, N'Customer 6', N'LN 6', N'M', N'xxxxxxxxxx', NULL, N'Customer 6@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (5, N'Customer 7', N'LN 7', N'M', N'xxxxxxxxxx', NULL, N'Customer 7@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (6, N'Customer 9', N'LN 9', N'M', N'xxxxxxxxxx', NULL, N'Customer 9@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (7, N'Customer 10', N'LN 10', N'M', N'xxxxxxxxxx', NULL, N'Customer 10@abc.in')
GO
INSERT [dbo].[DimCustomer] ([CustomerKey], [FirstName], [LastName], [Gender], [Mobile], [BirthDate], [Email]) VALUES (8, N'Customer11', N'LN 11', N'F', N'xxxxxxxxxx', NULL, N'Customer 11 @abc.in')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (1, N'Product 1', N'Brand 1', N'Color 1', N'Style 1')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (2, N'Product 2', N'Brand 2', N'Color 2', N'Style 2')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (3, N'Product 3', N'Brand 3', N'Color 3', N'Style 3')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (4, N'Product 4', N'Brand 4', N'Color 4', N'Style 4')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (5, N'Product 5', N'Brand 5', N'Color 5', N'Style 5')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (6, N'Product 6', N'Brand 6', N'Color 6', N'Style 6')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (7, N'Product 7', N'Brand 7', N'Color 7', N'Style 7')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (8, N'Product 8', N'Brand 8', N'Color 8', N'Style 8')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (9, N'Product 9', N'Brand 9', N'Color 9', N'Style 9')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (10, N'Product 10', N'Brand 10', N'Color 10', N'Style 10')
GO
INSERT [dbo].[DimProduct] ([ProductId], [ProductName], [Brand], [Color], [Style]) VALUES (11, N'Product 11', N'Brand 11', N'Color 11', N'Style 11')
GO
INSERT [dbo].[DimStore] ([StoreId], [StoreNo], [Manager], [Address]) VALUES (1, N'Store1', N'SN -01', N'Manager 1')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (1, N'SN-OCT-01', 1, 1, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), N'Card', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (2, N'SN-OCT-02', 1, 2, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), N'Cash', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (3, N'SN-OCT-03', 1, 3, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), N'Card', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (4, N'SN-OCT-04', 2, 4, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), N'Cash', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (5, N'SN-OCT-05', 3, 5, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), N'Card', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (6, N'SN-NOV-01', 4, 6, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Cash', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (7, N'SN-NOV-02', 5, 7, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Card', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (8, N'SN-NOV-03', 1, 8, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Cash', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (9, N'SN-NOV-04', 6, 9, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Card', N'1', N'100')
GO
INSERT [dbo].[FactSales] ([SalesKey], [SalesNo], [CustomerKey], [ProductKey], [StoreKey], [Date], [PaymentType], [SalesQty], [SalesAmount]) VALUES (10, N'SN-NOV-05', 7, 10, 1, CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Cash', N'1', N'100')
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimCustomer]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductId])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimProduct]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimStore] FOREIGN KEY([StoreKey])
REFERENCES [dbo].[DimStore] ([StoreId])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimStore]
GO
USE [master]
GO
ALTER DATABASE [SQLCompleteCourse] SET  READ_WRITE 
GO
