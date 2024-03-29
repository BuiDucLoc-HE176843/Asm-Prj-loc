USE [VeShop]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[OrderDate] [smalldatetime] NULL,
	[Address] [nvarchar](250) NOT NULL,
	[IsEnable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Image] [varchar](200) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK__tblProdu__B40CC6ED157D301E] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__tblRole__8AFACE3A35AB3F6E] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 3/18/2024 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK__tblUser__1788CCAC94EA4ED8] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (1, N'Leafy green')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (2, N'Cruciferous')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (3, N'Allium')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (4, N'Marrow')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (8, N'Stone fruit')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (9, N'Berries')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (10, N'Melons')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (1, N'SE151335', CAST(N'2021-08-24T11:59:00' AS SmallDateTime), N'420G Bui Dinh Tuy, Ward 24', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (4, N'SE151335', CAST(N'2021-08-24T12:07:00' AS SmallDateTime), N'94 Highway 30', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (5, N'104948790975953911821', CAST(N'2021-08-24T12:18:00' AS SmallDateTime), N'F1802b, M3-m4 Building, 91 Nguyen Chi Thanh', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (6, N'109737134661024912011', CAST(N'2021-08-24T13:24:00' AS SmallDateTime), N'322 Street 3/2, Ward 12, District 10', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (8, N'SE151335', CAST(N'2021-08-27T10:52:00' AS SmallDateTime), N'440 - 442 Lac Long Quan, Ward 5, District 11', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (9, N'SE151335', CAST(N'2021-10-29T23:27:00' AS SmallDateTime), N'38 Dang Tat St., Tan Dinh Ward, Dist. 1', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (12, N'SE151335', CAST(N'2021-10-30T18:45:00' AS SmallDateTime), N'7A Tang Bat Ho Street, Ward 12, District 5', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (15, N'SE151335', CAST(N'2021-10-30T18:54:00' AS SmallDateTime), N'B440 Area 3, Dong Hung Thuan Ward, Dist.12', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (16, N'SE123456', CAST(N'2021-10-30T21:30:00' AS SmallDateTime), N'121 Luy Ban Bich, Ward 20', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (17, N'HE176843', CAST(N'2024-03-09T20:29:00' AS SmallDateTime), N'vietnam', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (18, N'HE176843', CAST(N'2024-03-11T10:47:00' AS SmallDateTime), N'vietnam', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (19, N'HE176843', CAST(N'2024-03-11T10:48:00' AS SmallDateTime), N'vietnam', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (20, N'HE176843', CAST(N'2024-03-11T10:55:00' AS SmallDateTime), N'vietnam', 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [OrderDate], [Address], [IsEnable]) VALUES (21, N'HE176843', CAST(N'2024-03-18T23:37:00' AS SmallDateTime), N'Viet Nam', 1)
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (1, 1, 2, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (2, 4, 1, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (3, 5, 8, 2)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (4, 6, 2, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (5, 8, 2, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (6, 9, 4, 2)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (7, 9, 5, 2)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (8, 12, 2, 9)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (9, 15, 1, 15)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (10, 16, 8, 13)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (11, 16, 1, 15)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (12, 16, 3, 10)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (13, 17, 16, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (14, 17, 20, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (15, 18, 7, 3)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (16, 19, 26, 2)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (17, 20, 20, 9)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (18, 21, 25, 1)
INSERT [dbo].[tblOrderDetail] ([DetailID], [OrderID], [ProductID], [Quantity]) VALUES (19, 21, 20, 2)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (1, N'Rau diếp', N'https://suckhoeviet.org.vn/stores/news_dataimages/2023/112023/09/16/medium/ae040aae2e141af8bfc8ccab2e7f0e7a.jpg', 70, 10000, 1)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (2, N'Rau Bina', N'https://www.hoidaubepaau.com/wp-content/uploads/2019/12/rau-spinach-la-rau-gi.jpg', 40, 12000, 1)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (3, N'Cải cầu vồng', N'https://hstatic.net/791/1000069791/1/2016/2-24/cai-cau-vong_master.jpg', 50, 8000, 1)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (4, N'Bắp cải', N'https://vcdn-vnexpress.vnecdn.net/2017/03/15/Cabbage-1380-1489565705.jpg', 60, 8000, 2)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (5, N'Súp lơ', N'https://vcdn-vnexpress.vnecdn.net/2017/03/15/cauliflower-2807-1489565733.jpg', 85, 9000, 2)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (6, N'Bông cải xanh', N'https://vuonrau.com/imageUpload/products/2015320163857.jpg', 40, 10000, 2)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (7, N'Hành tây', N'https://naturallyvietnam.com/wp-content/uploads/2020/05/onion.jpg', 27, 6000, 3)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (8, N'Tỏi', N'https://www.sgl28.com/wp-content/uploads/2020/10/garlic.jpeg', 20, 7000, 3)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (9, N'Hành tím', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/383/866/products/841021a04fa3b1fde8b2.jpg?v=1602650258937', 25, 8000, 3)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (10, N'Bí đỏ', N'https://images.immediate.co.uk/production/volatile/sites/30/2020/02/pumpkin-3f3d894.jpg?quality=90&resize=661%2C600', 120, 13000, 4)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (11, N'Dưa leo', N'https://static.libertyprim.com/files/varietes/concombre-hollandais-large.jpg?1569524167', 70, 5000, 4)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (12, N'Quả xuân đào', N'https://songkhoe.medplus.vn/wp-content/uploads/2019/12/Thi%E1%BA%BFt-k%E1%BA%BF-kh%C3%B4ng-t%C3%AAn-38-1-1.png', 65, 8000, 8)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (13, N'Quả mơ', N'https://tfruit.com.vn/wp-content/uploads/2020/03/qu%E1%BA%A3-m%C6%A1.jpg', 90, 9000, 8)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (14, N'Quả đào', N'https://vcdn-vnexpress.vnecdn.net/2017/04/27/peach-1945-1493287308.jpg', 60, 12000, 8)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (15, N'Quả mận', N'https://www.studytienganh.vn/upload/2021/06/104996.png', 100, 6000, 8)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (16, N'Quả dâu tây', N'https://www.studytienganh.vn/upload/2021/03/94415.jpg', 74, 12000, 9)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (17, N'Quả kiwi', N'https://upload.wikimedia.org/wikipedia/commons/9/9d/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour_edit.jpg', 40, 11000, 9)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (19, N'Chanh leo', N'http://especiasyfrutas.com/wp-content/uploads/2020/01/FOTO-GRANADILLA-1.jpg', 50, 8000, 9)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (20, N'Dưa hấu', N'https://www.studytienganh.vn/upload/2021/05/99500.jpg', 68, 9000, 10)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (25, N'Dưa vàng', N'https://upload.wikimedia.org/wikipedia/commons/2/28/Cantaloupes.jpg', 129, 14000, 10)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (26, N'Dưa lưới', N'http://images.squarespace-cdn.com/content/v1/5887591944024399219df6fb/1586102097091-KABB1MYVL182UDHGRW78/Honeydew-Melon-Food-Flavour-by-Capella-1.jpg', 83, 6000, 10)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([RoleID], [RoleName]) VALUES (1, N'Customer')
INSERT [dbo].[tblRole] ([RoleID], [RoleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'104948790975953911821', N'Tester1', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'108647748802751401403', N'Tester2', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'109737134661024912011', N'Tester3', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'HE1', N'Bui Duc Loc', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'HE176843', N'Bui Duc Loc', N'duclocdl03', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'HE2', N'Bui Duc Loc', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'SE123456', N'Bui Duc Loc', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'SE151335', N'Bui Duc Loc', N'123456789', 1)
INSERT [dbo].[tblUser] ([UserID], [Name], [Password], [RoleID]) VALUES (N'SE1822', N'Bui Duc Loc', N'duclocdl03', 2)
GO
/****** Object:  Index [IX_tblOrderDetail]    Script Date: 3/18/2024 23:47:50 ******/
ALTER TABLE [dbo].[tblOrderDetail] ADD  CONSTRAINT [IX_tblOrderDetail] UNIQUE NONCLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrder] ADD  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK__tblOrder__UserID__34C8D9D1] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK__tblOrder__UserID__34C8D9D1]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__tblOrderD__Order__35BCFE0A] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK__tblOrderD__Order__35BCFE0A]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__tblOrderD__Produ__36B12243] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK__tblOrderD__Produ__36B12243]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK__tblProduc__Categ__37A5467C] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK__tblProduc__Categ__37A5467C]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK__tblUser__RoleID__38996AB5] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([RoleID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK__tblUser__RoleID__38996AB5]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [CHK_ProductDetailQuantity] CHECK  (([Quantity]>=(0)))
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [CHK_ProductDetailQuantity]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [CHK_ProductQuantity] CHECK  (([Quantity]>=(0)))
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [CHK_ProductQuantity]
GO
