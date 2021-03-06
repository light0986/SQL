USE [qrcadmin]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[State_ID] [int] NOT NULL,
	[City_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] NOT NULL,
	[Company_Name] [varchar](10) NOT NULL,
	[Company_Address1] [varchar](20) NULL,
	[Company_Address2] [varchar](20) NULL,
	[Country_ID] [int] NULL,
	[State_ID] [int] NULL,
	[City_ID] [int] NULL,
	[Company_TEL] [varchar](15) NULL,
	[Company_FAX] [varchar](15) NULL,
	[Company_Type_ID] [int] NULL,
	[Company_Web] [varchar](50) NULL,
	[Company_Description] [varchar](50) NULL,
	[Company_Email] [varchar](50) NULL,
	[Company_No] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Departments]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Departments](
	[ID] [int] NOT NULL,
	[Department_No] [varchar](20) NOT NULL,
	[Department_Name] [varchar](15) NOT NULL,
	[Company_ID] [int] NOT NULL,
	[Department_Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Site]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Site](
	[ID] [int] NOT NULL,
	[Site_Name] [varchar](10) NOT NULL,
	[Site_Type_ID] [int] NOT NULL,
	[Site_No] [varchar](20) NOT NULL,
	[Company_ID] [int] NOT NULL,
	[Site_Location] [varchar](20) NULL,
	[Site_Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](10) NOT NULL,
	[Create_Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Container_List]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Container_List](
	[ID] [int] NOT NULL,
	[Items_ID] [int] NOT NULL,
	[Container_Type_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Customer_Order_ID] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Container_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Container_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Country_Name] [varchar](10) NOT NULL,
	[Create_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Order]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Order](
	[ID] [int] NOT NULL,
	[ShipFrom] [int] NOT NULL,
	[ShipTo] [int] NOT NULL,
	[Creater_Account] [varchar](50) NOT NULL,
	[Order_Note] [varchar](50) NULL,
	[Original_No] [varchar](30) NULL,
	[CreateDate] [date] NOT NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[ID] [int] NOT NULL,
	[Device_ModelType_ID] [int] NOT NULL,
	[Manufacrurer_ID] [int] NULL,
	[Location_Company_ID] [int] NOT NULL,
	[Site_ID] [int] NOT NULL,
	[Device_Name] [varchar](20) NOT NULL,
	[Enabled] [int] NULL,
	[Device_Code] [varchar](20) NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Device_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device_ModelType]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device_ModelType](
	[ID] [int] NOT NULL,
	[ModelType_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device_NetWorking]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device_NetWorking](
	[Device_Code] [varchar](20) NOT NULL,
	[Device_IP] [varchar](15) NULL,
	[IP_Port] [varchar](5) NOT NULL,
	[Mac_Address] [varchar](17) NULL,
	[Create_Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goods_List]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods_List](
	[ID] [int] NOT NULL,
	[Product_QRC] [varchar](30) NOT NULL,
	[Items_ID] [int] NOT NULL,
	[WorkOrder_ID] [int] NOT NULL,
	[Work_Type_ID] [int] NOT NULL,
	[Site_ID] [int] NULL,
	[Company_ID] [int] NULL,
	[Container_ID] [int] NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Product_QRC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] NOT NULL,
	[Product_ID] [varchar](20) NULL,
	[Item_Name] [varchar](30) NULL,
	[Item_Type_ID] [int] NULL,
	[IsPawMaterial] [int] NULL,
	[Item_Description] [varchar](50) NULL,
	[Manufacturer_ID] [int] NULL,
	[Owner_Company_ID] [int] NOT NULL,
	[Unit] [varchar](20) NULL,
	[Capacity] [varchar](20) NULL,
	[GTIN] [varchar](20) NULL,
	[Create_Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[ID] [int] NOT NULL,
	[Job_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_List]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_List](
	[ID] [int] NOT NULL,
	[Items_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Gift_Quantity] [int] NOT NULL,
	[Order_Type_ID] [int] NULL,
	[Company_ID] [int] NOT NULL,
	[Customer_Order_ID] [int] NOT NULL,
	[Work_Type_ID] [int] NULL,
	[Work_Step_ID] [int] NULL,
	[DesireDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutSourcing]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutSourcing](
	[ID] [int] NOT NULL,
	[Company_ID] [int] NOT NULL,
	[Subconstactor_Company_ID] [int] NOT NULL,
	[OutSourcing_Type_ID] [int] NOT NULL,
	[OutSourcing_Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutSourcing_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutSourcing_Type](
	[ID] [int] NOT NULL,
	[OutSourcing_Type_Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_OutSourcing_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Premission]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premission](
	[ID] [int] NOT NULL,
	[Function01] [int] NULL,
	[Function02] [int] NULL,
	[Function03] [int] NULL,
	[Function04] [int] NULL,
	[Function05] [int] NULL,
	[Function06] [int] NULL,
	[Function07] [int] NULL,
	[Function08] [int] NULL,
	[Function09] [int] NULL,
	[Function10] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RawMaterial_List]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterial_List](
	[ID] [int] NOT NULL,
	[Order_List_ID] [int] NOT NULL,
	[RawMaterial_Order_List_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Site_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](10) NOT NULL,
	[Type_Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[ID] [int] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[State_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Account]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Account](
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[User_Type_ID] [int] NULL,
	[User_Name] [varchar](20) NULL,
	[User_Gender_ID] [int] NULL,
	[User_Employee_ID] [varchar](20) NULL,
	[Company_ID] [int] NULL,
	[Department_ID] [int] NULL,
	[Job_ID] [int] NULL,
	[Permission_ID] [int] NULL,
	[User_Email] [varchar](50) NOT NULL,
	[User_Phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Permission_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Gender]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Gender](
	[ID] [int] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Step]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Step](
	[ID] [int] NOT NULL,
	[Step_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Type]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Type](
	[ID] [int] NOT NULL,
	[Type_Name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrder]    Script Date: 2021/6/17 下午 08:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrder](
	[ID] [int] NOT NULL,
	[WorkOrder_No] [varchar](20) NOT NULL,
	[Order_List_ID] [int] NOT NULL,
	[Lot_No] [varchar](20) NULL,
	[Company_ID] [int] NOT NULL,
	[Require_Quntity] [int] NOT NULL,
	[Creater_ID] [varchar](50) NOT NULL,
	[CreateDAte] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [dbo].[States] ([ID])
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD FOREIGN KEY([Company_Type_ID])
REFERENCES [dbo].[Company_Type] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [dbo].[States] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Company_Departments]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Company_Site]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Company_Site]  WITH CHECK ADD FOREIGN KEY([Site_Type_ID])
REFERENCES [dbo].[Site_Type] ([ID])
GO
ALTER TABLE [dbo].[Container_List]  WITH CHECK ADD FOREIGN KEY([Container_Type_ID])
REFERENCES [dbo].[Container_Type] ([ID])
GO
ALTER TABLE [dbo].[Container_List]  WITH CHECK ADD FOREIGN KEY([Customer_Order_ID])
REFERENCES [dbo].[Customer_Order] ([ID])
GO
ALTER TABLE [dbo].[Container_List]  WITH CHECK ADD FOREIGN KEY([Items_ID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([Creater_Account])
REFERENCES [dbo].[User_Account] ([Account])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([ShipFrom])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([ShipTo])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD FOREIGN KEY([Device_ModelType_ID])
REFERENCES [dbo].[Device_ModelType] ([ID])
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD FOREIGN KEY([Location_Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD FOREIGN KEY([Manufacrurer_ID])
REFERENCES [dbo].[Company] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD FOREIGN KEY([Site_ID])
REFERENCES [dbo].[Company_Site] ([ID])
GO
ALTER TABLE [dbo].[Device_NetWorking]  WITH CHECK ADD FOREIGN KEY([Device_Code])
REFERENCES [dbo].[Device] ([Device_Code])
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([Container_ID])
REFERENCES [dbo].[Container_List] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([Items_ID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([Site_ID])
REFERENCES [dbo].[Company_Site] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([Work_Type_ID])
REFERENCES [dbo].[Work_Type] ([ID])
GO
ALTER TABLE [dbo].[Goods_List]  WITH CHECK ADD FOREIGN KEY([WorkOrder_ID])
REFERENCES [dbo].[WorkOrder] ([ID])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([Item_Type_ID])
REFERENCES [dbo].[Item_Type] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([Manufacturer_ID])
REFERENCES [dbo].[Company] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([Owner_Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Customer_Order_ID])
REFERENCES [dbo].[Customer_Order] ([ID])
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Items_ID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Order_Type_ID])
REFERENCES [dbo].[Order_Type] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Work_Type_ID])
REFERENCES [dbo].[Work_Type] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order_List]  WITH CHECK ADD FOREIGN KEY([Work_Step_ID])
REFERENCES [dbo].[Work_Step] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OutSourcing]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[OutSourcing]  WITH CHECK ADD FOREIGN KEY([OutSourcing_Type_ID])
REFERENCES [dbo].[OutSourcing_Type] ([ID])
GO
ALTER TABLE [dbo].[OutSourcing]  WITH CHECK ADD FOREIGN KEY([Subconstactor_Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[RawMaterial_List]  WITH CHECK ADD FOREIGN KEY([Order_List_ID])
REFERENCES [dbo].[Order_List] ([ID])
GO
ALTER TABLE [dbo].[RawMaterial_List]  WITH CHECK ADD FOREIGN KEY([RawMaterial_Order_List_ID])
REFERENCES [dbo].[Order_List] ([ID])
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Company_Departments] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([Job_ID])
REFERENCES [dbo].[Jobs] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([Permission_ID])
REFERENCES [dbo].[Premission] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([User_Type_ID])
REFERENCES [dbo].[User_Type] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User_Account]  WITH CHECK ADD FOREIGN KEY([User_Gender_ID])
REFERENCES [dbo].[User_Gender] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD FOREIGN KEY([Company_ID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD FOREIGN KEY([Creater_ID])
REFERENCES [dbo].[User_Account] ([Account])
GO
ALTER TABLE [dbo].[WorkOrder]  WITH CHECK ADD FOREIGN KEY([Order_List_ID])
REFERENCES [dbo].[Order_List] ([ID])
GO
