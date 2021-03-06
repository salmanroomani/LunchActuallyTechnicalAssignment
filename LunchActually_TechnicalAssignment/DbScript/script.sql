USE [LunchActually]
GO
/****** Object:  Table [dbo].[BookingRooms]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingRooms](
	[BookingRoomID] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingID] [bigint] NOT NULL,
	[RoomTypeID] [bigint] NOT NULL,
	[RoomID] [bigint] NOT NULL,
	[CheckInDate] [datetime] NOT NULL,
	[CheckOutDate] [datetime] NOT NULL,
	[Status] [varchar](20) NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_BookingRooms] PRIMARY KEY CLUSTERED 
(
	[BookingRoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingNumber] [nvarchar](50) NOT NULL,
	[BookingStatus] [nvarchar](20) NULL,
	[CountryID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[HotelID] [bigint] NOT NULL,
	[TotalNumberOfRooms] [int] NULL,
	[NumberOfAdults] [int] NOT NULL,
	[NumberOfChildren] [int] NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[CheckInDate] [datetime] NOT NULL,
	[CheckOutDate] [datetime] NOT NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CityName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[HotelID] [bigint] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[NumberOfRooms] [int] NULL,
	[HotelAddress] [nvarchar](50) NULL,
	[StarRatings] [nvarchar](50) NULL,
	[HotelWebsite] [nvarchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomTypeID] [bigint] NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NULL,
	[HotelID] [bigint] NULL,
	[RoomNumber] [nvarchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 4/24/2019 6:52:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[RoomTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NULL,
	[HotelID] [bigint] NOT NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_RoomTypes] PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BookingRooms] ON 

INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (11, 2, 1, 1, CAST(0x0000AA3900000000 AS DateTime), CAST(0x0000AA3D00000000 AS DateTime), N'Updated', CAST(0x0000AA380066116E AS DateTime), CAST(0x0000AA380066116E AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (12, 2, 1, 2, CAST(0x0000AA3900000000 AS DateTime), CAST(0x0000AA3D00000000 AS DateTime), N'Updated', CAST(0x0000AA3800661172 AS DateTime), CAST(0x0000AA3800661172 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (13, 3, 1, 2, CAST(0x0000AA2B00000000 AS DateTime), CAST(0x0000AA2E00C5C100 AS DateTime), N'Confirmed', CAST(0x0000AA3800692819 AS DateTime), CAST(0x0000AA3800692819 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (14, 4, 2, 3, CAST(0x0000AA2200000000 AS DateTime), CAST(0x0000AA2500000000 AS DateTime), N'Confirmed', CAST(0x0000AA38006A52D8 AS DateTime), CAST(0x0000AA38006A52D8 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (15, 5, 3, 11, CAST(0x0000AA3800000000 AS DateTime), CAST(0x0000AA3900000000 AS DateTime), N'Confirmed', CAST(0x0000AA38006E721E AS DateTime), CAST(0x0000AA38006E721E AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (16, 6, 3, 11, CAST(0x0000AA2200000000 AS DateTime), CAST(0x0000AA2B00000000 AS DateTime), N'Confirmed', CAST(0x0000AA38006F91B1 AS DateTime), CAST(0x0000AA38006F91B1 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (20, 18, 1, 1, CAST(0x0000AA3100000000 AS DateTime), CAST(0x0000AA3500000000 AS DateTime), N'Confirmed', CAST(0x0000AA39002A2719 AS DateTime), CAST(0x0000AA39002A2719 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (21, 18, 2, 3, CAST(0x0000AA3100000000 AS DateTime), CAST(0x0000AA3500000000 AS DateTime), N'Confirmed', CAST(0x0000AA39002A2719 AS DateTime), CAST(0x0000AA39002A2719 AS DateTime))
INSERT [dbo].[BookingRooms] ([BookingRoomID], [BookingID], [RoomTypeID], [RoomID], [CheckInDate], [CheckOutDate], [Status], [InsertDate], [UpdateDate]) VALUES (22, 19, 1, 1, CAST(0x0000AA2C00000000 AS DateTime), CAST(0x0000AA3000000000 AS DateTime), N'Confirmed', CAST(0x0000AA39002ABFE6 AS DateTime), CAST(0x0000AA39002ABFE6 AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingRooms] OFF
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (2, N'MNIZXJ', N'Updated', 1, 1, 1, 2, 4, 0, N'salman Bilal', N'salmanbilal46@gmail.com', CAST(0x0000AA3900000000 AS DateTime), CAST(0x0000AA3D00000000 AS DateTime), CAST(0x0000AA370168A1A2 AS DateTime), CAST(0x0000AA3800661154 AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (3, N'MIDCSN', N'Confirmed', 1, 1, 1, 1, 2, 2, N'John Doe', N'johndoe@test.com', CAST(0x0000AA2B00000000 AS DateTime), CAST(0x0000AA2E00C5C100 AS DateTime), CAST(0x0000AA38006927C7 AS DateTime), CAST(0x0000AA38006927C7 AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (4, N'EBVRXL', N'Confirmed', 1, 1, 1, 1, 2, 0, N'Henry', N'henry@gmail.com', CAST(0x0000AA2200000000 AS DateTime), CAST(0x0000AA2500000000 AS DateTime), CAST(0x0000AA38006A52D6 AS DateTime), CAST(0x0000AA38006A52D6 AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (5, N'ERHFYS', N'Confirmed', 1, 2, 3, 1, 2, 0, N'Testing', N'testing@testing.com', CAST(0x0000AA3800000000 AS DateTime), CAST(0x0000AA3900000000 AS DateTime), CAST(0x0000AA38006E721B AS DateTime), CAST(0x0000AA38006E721B AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (6, N'ORSFDQ', N'Confirmed', 1, 2, 3, 1, 2, 0, N'King Batch', N'kingbatch@testing.com', CAST(0x0000AA2200000000 AS DateTime), CAST(0x0000AA2B00000000 AS DateTime), CAST(0x0000AA38006F91AF AS DateTime), CAST(0x0000AA38006F91AF AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (18, N'YQPBYC', N'Confirmed', 1, 1, 1, 2, 4, 1, N'Max', N'Max@gmail.com', CAST(0x0000AA3100000000 AS DateTime), CAST(0x0000AA3500000000 AS DateTime), CAST(0x0000AA39002A2715 AS DateTime), CAST(0x0000AA39002A2715 AS DateTime))
INSERT [dbo].[Bookings] ([BookingID], [BookingNumber], [BookingStatus], [CountryID], [CityID], [HotelID], [TotalNumberOfRooms], [NumberOfAdults], [NumberOfChildren], [CustomerName], [CustomerEmail], [CheckInDate], [CheckOutDate], [InsertDate], [UpdateDate]) VALUES (19, N'IEVHKQ', N'Confirmed', 1, 1, 1, 1, 2, 1, N'Marry', N'Marry@gmail.com', CAST(0x0000AA2C00000000 AS DateTime), CAST(0x0000AA3000000000 AS DateTime), CAST(0x0000AA39002ABFE4 AS DateTime), CAST(0x0000AA39002ABFE4 AS DateTime))
SET IDENTITY_INSERT [dbo].[Bookings] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CountryID], [CityName]) VALUES (1, 1, N'Bangkok')
INSERT [dbo].[Cities] ([CityId], [CountryID], [CityName]) VALUES (2, 1, N'Phuket')
INSERT [dbo].[Cities] ([CityId], [CountryID], [CityName]) VALUES (3, 1, N'Pattaya')
INSERT [dbo].[Cities] ([CityId], [CountryID], [CityName]) VALUES (4, 1, N'Chiang Mai')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (1, N'Thailand')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([HotelID], [HotelName], [CountryID], [CityID], [ContactNumber], [NumberOfRooms], [HotelAddress], [StarRatings], [HotelWebsite], [InsertDate], [UpdateDate]) VALUES (1, N'Lunch Acutally Sukhumvit', 1, 1, N'+66 3132 123', 10, N'Bangkok Hotel Address ', N'5 Star', N'https://www.lunchactually.com/', NULL, CAST(0x0000AA350138377F AS DateTime))
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [CountryID], [CityID], [ContactNumber], [NumberOfRooms], [HotelAddress], [StarRatings], [HotelWebsite], [InsertDate], [UpdateDate]) VALUES (3, N'Phuket Hotel 5 Star', 1, 2, N'+66 124 232', 20, N'address', N'5 Star', N'https://www.lunchactually.com', CAST(0x0000AA38006E00CB AS DateTime), CAST(0x0000AA38006E00CB AS DateTime))
SET IDENTITY_INSERT [dbo].[Hotels] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [Username], [Password]) VALUES (1, N'Admin', N'21232f297a57a5a743894a0e4a801fc3')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (1, 1, 1, 1, 1, N'101', CAST(0x0000AA34015194FC AS DateTime), CAST(0x0000AA34015194FC AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (2, 1, 1, 1, 1, N'102', CAST(0x0000AA35012573FF AS DateTime), CAST(0x0000AA35012573FF AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (3, 2, 1, 1, 1, N'201', CAST(0x0000AA3501258658 AS DateTime), CAST(0x0000AA3501258658 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (4, 1, 1, 1, 1, N'103', CAST(0x0000AA380069D1D4 AS DateTime), CAST(0x0000AA380069D1D4 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (5, 1, 1, 1, 1, N'104', CAST(0x0000AA380069D89B AS DateTime), CAST(0x0000AA380069D89B AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (6, 1, 1, 1, 1, N'105', CAST(0x0000AA380069DE56 AS DateTime), CAST(0x0000AA380069DE56 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (7, 2, 1, 1, 1, N'202', CAST(0x0000AA380069E6C1 AS DateTime), CAST(0x0000AA380069E6C1 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (8, 2, 1, 1, 1, N'203', CAST(0x0000AA380069EC21 AS DateTime), CAST(0x0000AA380069EC21 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (9, 2, 1, 1, 1, N'204', CAST(0x0000AA380069F208 AS DateTime), CAST(0x0000AA380069F208 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (10, 2, 1, 1, 1, N'205', CAST(0x0000AA380069F7A3 AS DateTime), CAST(0x0000AA380069F7A3 AS DateTime))
INSERT [dbo].[Rooms] ([RoomID], [RoomTypeID], [CountryID], [CityID], [HotelID], [RoomNumber], [InsertDate], [UpdateDate]) VALUES (11, 3, 1, 2, 3, N'501', CAST(0x0000AA38006E36C0 AS DateTime), CAST(0x0000AA38006E36C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[RoomTypes] ON 

INSERT [dbo].[RoomTypes] ([RoomTypeID], [TypeName], [CountryID], [CityID], [HotelID], [InsertDate], [UpdateDate]) VALUES (1, N'Single Bed Room', 1, 1, 1, CAST(0x0000AA33018545F9 AS DateTime), CAST(0x0000AA33018545F9 AS DateTime))
INSERT [dbo].[RoomTypes] ([RoomTypeID], [TypeName], [CountryID], [CityID], [HotelID], [InsertDate], [UpdateDate]) VALUES (2, N'Double Bed Rooms', 1, 1, 1, CAST(0x0000AA33018554EE AS DateTime), CAST(0x0000AA33018554EE AS DateTime))
INSERT [dbo].[RoomTypes] ([RoomTypeID], [TypeName], [CountryID], [CityID], [HotelID], [InsertDate], [UpdateDate]) VALUES (3, N'Phuket SinlgeBed', 1, 2, 3, CAST(0x0000AA38006E21E0 AS DateTime), CAST(0x0000AA38006E21E0 AS DateTime))
SET IDENTITY_INSERT [dbo].[RoomTypes] OFF
