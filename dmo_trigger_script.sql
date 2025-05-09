USE [master]
GO
/****** Object:  Database [DIEM]    Script Date: 4/20/2025 11:35:38 PM ******/
CREATE DATABASE [DIEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DIEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DIEM.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DIEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DIEM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DIEM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DIEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DIEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DIEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DIEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [DIEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DIEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DIEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DIEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DIEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DIEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DIEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DIEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DIEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DIEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DIEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DIEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DIEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DIEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DIEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DIEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DIEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DIEM] SET RECOVERY FULL 
GO
ALTER DATABASE [DIEM] SET  MULTI_USER 
GO
ALTER DATABASE [DIEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DIEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DIEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DIEM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DIEM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DIEM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DIEM', N'ON'
GO
ALTER DATABASE [DIEM] SET QUERY_STORE = ON
GO
ALTER DATABASE [DIEM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DIEM]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 4/20/2025 11:35:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[ID_HS] [int] IDENTITY(1,1) NOT NULL,
	[ID_HK] [int] NULL,
	[DiemMieng] [float] NULL,
	[Diem15p] [float] NULL,
	[DiemThi] [float] NULL,
	[ID_MH] [int] NULL,
	[DiemTB] [float] NULL,
	[ID_Diem] [int] NOT NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[ID_Diem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem_Log]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_Log](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Diem] [int] NULL,
	[TruocCapNhat_DiemMieng] [float] NULL,
	[TruocCapNhat_Diem15p] [float] NULL,
	[TruocCapNhat_DiemThi] [float] NULL,
	[SauCapNhat_DiemMieng] [float] NULL,
	[SauCapNhat_Diem15p] [float] NULL,
	[SauCapNhat_DiemThi] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[ID_GV] [int] NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[ChuyenMon] [nvarchar](50) NULL,
 CONSTRAINT [PK_GV_1] PRIMARY KEY CLUSTERED 
(
	[ID_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HK]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HK](
	[ID_HK] [int] NOT NULL,
	[TenHK] [nvarchar](50) NULL,
	[NamHoc] [nchar](10) NULL,
 CONSTRAINT [PK_HK] PRIMARY KEY CLUSTERED 
(
	[ID_HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HS]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HS](
	[ID_HS] [int] NOT NULL,
	[MaHS] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[ID_Lop] [int] NULL,
 CONSTRAINT [PK_HS] PRIMARY KEY CLUSTERED 
(
	[ID_HS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[ID_Lop] [int] NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[NamHoc] [nvarchar](50) NULL,
	[ID_GV] [int] NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[ID_Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID_MH] [int] NOT NULL,
	[MaMH] [nvarchar](50) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[ID_GV] [int] NULL,
 CONSTRAINT [PK_MonHoc_1] PRIMARY KEY CLUSTERED 
(
	[ID_MH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID_ND] [int] NOT NULL,
	[TenND] [nvarchar](50) NULL,
	[MK] [nvarchar](50) NULL,
	[ID_HS] [int] NULL,
	[ID_GV] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID_ND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCongDay]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCongDay](
	[ID_PCD] [int] NOT NULL,
	[ID_GV] [int] NULL,
	[ID_MH] [int] NULL,
	[ID_Lop] [int] NULL,
	[MaGV] [nvarchar](50) NULL,
	[NamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanCongDay] PRIMARY KEY CLUSTERED 
(
	[ID_PCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (10, 1, 9, 7.5, 7.5, 111, 9.2, 1)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (11, 2, 8.5, 9.2, 7.5, 112, 7.8, 2)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (12, 3, 10, 8.5, 8.4, 113, 8.5, 3)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (13, 4, 7.5, 7.5, 6.8, 114, 6.9, 4)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (14, 5, 8, 8, 8, 115, 8, 5)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (10, 1, 9, 9, 9, 111, 9, 71)
INSERT [dbo].[Diem] ([ID_HS], [ID_HK], [DiemMieng], [Diem15p], [DiemThi], [ID_MH], [DiemTB], [ID_Diem]) VALUES (10, 1, 10, 10, 10, 111, 10, 72)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem_Log] ON 

INSERT [dbo].[Diem_Log] ([LogID], [ID_Diem], [TruocCapNhat_DiemMieng], [TruocCapNhat_Diem15p], [TruocCapNhat_DiemThi], [SauCapNhat_DiemMieng], [SauCapNhat_Diem15p], [SauCapNhat_DiemThi]) VALUES (1, 72, 9, 8.9, 7.5, 10, 8.9, 7.5)
INSERT [dbo].[Diem_Log] ([LogID], [ID_Diem], [TruocCapNhat_DiemMieng], [TruocCapNhat_Diem15p], [TruocCapNhat_DiemThi], [SauCapNhat_DiemMieng], [SauCapNhat_Diem15p], [SauCapNhat_DiemThi]) VALUES (2, 72, 10, 8.9, 7.5, 10, 10, 7.5)
INSERT [dbo].[Diem_Log] ([LogID], [ID_Diem], [TruocCapNhat_DiemMieng], [TruocCapNhat_Diem15p], [TruocCapNhat_DiemThi], [SauCapNhat_DiemMieng], [SauCapNhat_Diem15p], [SauCapNhat_DiemThi]) VALUES (3, 72, 10, 10, 7.5, 10, 10, 10)
INSERT [dbo].[Diem_Log] ([LogID], [ID_Diem], [TruocCapNhat_DiemMieng], [TruocCapNhat_Diem15p], [TruocCapNhat_DiemThi], [SauCapNhat_DiemMieng], [SauCapNhat_Diem15p], [SauCapNhat_DiemThi]) VALUES (4, 71, 9, 8.9, 7.5, 9, 9, 9)
SET IDENTITY_INSERT [dbo].[Diem_Log] OFF
GO
INSERT [dbo].[GV] ([ID_GV], [MaGV], [HoTen], [ChuyenMon]) VALUES (1, N'GV01', N'N.V.HUY', N'TOAN')
INSERT [dbo].[GV] ([ID_GV], [MaGV], [HoTen], [ChuyenMon]) VALUES (2, N'GV02', N'N.MAI.ANH', N'VAN')
INSERT [dbo].[GV] ([ID_GV], [MaGV], [HoTen], [ChuyenMon]) VALUES (3, N'GV03', N'N.T.HUONG', N'ANH')
INSERT [dbo].[GV] ([ID_GV], [MaGV], [HoTen], [ChuyenMon]) VALUES (4, N'GV04', N'N.T.HIEN', N'DIALY')
INSERT [dbo].[GV] ([ID_GV], [MaGV], [HoTen], [ChuyenMon]) VALUES (5, N'GV05', N'D.T.HIEN', N'LSU')
GO
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (1, N'2', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (2, N'1', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (3, N'2', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (4, N'2', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (5, N'1', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (6, N'2', N'2024      ')
INSERT [dbo].[HK] ([ID_HK], [TenHK], [NamHoc]) VALUES (7, N'2', N'2025      ')
GO
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (1, N'HS001', N'Lê Quốc Trung', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (2, N'HS002', N'Hoàng Thị Xuân Trang', N'NU', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (3, N'HS003', N'Nguyễn Văn Thứ', N'NAM', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (4, N'HS004', N'Nguyễn Văn Thời', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (5, N'HS005', N'Nguyễn Tiến Thắng', N'NAM', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (6, N'HS006', N'Nguyễn Thu Thảo', N'NAM', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (7, N'HS007', N'Thân Nhân Thành', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (8, N'HS008', N'Nguyễn Lam Sơn', N'NAM', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (9, N'HS009', N'Phạm Mạnh Quỳnh', N'NAM', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (10, N'HS010', N'Trương Văn Quyến', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (11, N'HS011', N'Hoàng Thị Quyến', N'NU', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (12, N'HS012', N'Nguyễn Thị Xuân Phương', N'NU', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (13, N'HS013', N'Hầu Nhật Ninh', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (14, N'HS014', N'Nông Hồ Nhật', N'NAM', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (15, N'HS015', N'Phương Thị Ánh Nguyệt', N'NU', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (16, N'HS016', N'Nguyễn Hồng Ngọc', N'NAM', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (17, N'HS017', N'Hoàng Kim Ngọc', N'NAM', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (18, N'HS018', N'Phạm Tuấn Nghĩa', N'NAM', 103)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (19, N'HS019', N'Nguyễn Thị Hằng Nga', N'NU', 101)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (20, N'HS020', N'Nguyễn Phương Nam', N'NAM', 102)
INSERT [dbo].[HS] ([ID_HS], [MaHS], [HoTen], [GioiTinh], [ID_Lop]) VALUES (21, N'HS021', N'Hầu Thị Thanh Huyền', N'NU', 111)
GO
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (101, N'10A1', N'2024', 1)
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (102, N'10A2', N'2024', 2)
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (103, N'10A4', N'2024', 3)
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (104, N'10A7', N'2024', 4)
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (105, N'10A8', N'2024', 5)
INSERT [dbo].[LopHoc] ([ID_Lop], [TenLop], [NamHoc], [ID_GV]) VALUES (111, N'12A2', N'2025', 5)
GO
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (111, N'TEE01', N'TOAN', 1)
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (112, N'TEE02', N'VAN', 2)
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (113, N'TEE03', N'ANH', 3)
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (114, N'TEE04', N'ĐIA', 4)
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (115, N'TEE05', N'LSU', 5)
INSERT [dbo].[MonHoc] ([ID_MH], [MaMH], [TenMH], [ID_GV]) VALUES (200, N'TEE06', N'TOAN', 1)
GO
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (110, N'HS020', N'K789', 21, NULL)
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (111, N'GV01', N'a123', NULL, 1)
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (112, N'GV02', N'a123', NULL, 2)
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (113, N'HS017', N'K456', 18, NULL)
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (114, N'HS019', N'K456', 19, NULL)
INSERT [dbo].[NguoiDung] ([ID_ND], [TenND], [MK], [ID_HS], [ID_GV]) VALUES (115, N'HS020', N'K456', 20, NULL)
GO
INSERT [dbo].[PhanCongDay] ([ID_PCD], [ID_GV], [ID_MH], [ID_Lop], [MaGV], [NamHoc]) VALUES (1, 1, 111, 101, N'GV01', N'2024')
INSERT [dbo].[PhanCongDay] ([ID_PCD], [ID_GV], [ID_MH], [ID_Lop], [MaGV], [NamHoc]) VALUES (2, 2, 112, 102, N'GV02', N'2024')
INSERT [dbo].[PhanCongDay] ([ID_PCD], [ID_GV], [ID_MH], [ID_Lop], [MaGV], [NamHoc]) VALUES (3, 3, 113, 103, N'GV03', N'2024')
INSERT [dbo].[PhanCongDay] ([ID_PCD], [ID_GV], [ID_MH], [ID_Lop], [MaGV], [NamHoc]) VALUES (4, 4, 114, 101, N'GV04', N'2024')
INSERT [dbo].[PhanCongDay] ([ID_PCD], [ID_GV], [ID_MH], [ID_Lop], [MaGV], [NamHoc]) VALUES (5, 5, 115, 102, N'GV05', N'2024')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GV]    Script Date: 4/20/2025 11:35:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_GV] ON [dbo].[GV]
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HS]    Script Date: 4/20/2025 11:35:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_HS] ON [dbo].[HS]
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MonHoc]    Script Date: 4/20/2025 11:35:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_MonHoc] ON [dbo].[MonHoc]
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HK] FOREIGN KEY([ID_HK])
REFERENCES [dbo].[HK] ([ID_HK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HK]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HS] FOREIGN KEY([ID_HS])
REFERENCES [dbo].[HS] ([ID_HS])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HS]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_MonHoc] FOREIGN KEY([ID_MH])
REFERENCES [dbo].[MonHoc] ([ID_MH])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_MonHoc]
GO
ALTER TABLE [dbo].[HS]  WITH CHECK ADD  CONSTRAINT [FK_HS_LopHoc] FOREIGN KEY([ID_Lop])
REFERENCES [dbo].[LopHoc] ([ID_Lop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HS] CHECK CONSTRAINT [FK_HS_LopHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_GV] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GV] ([ID_GV])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_GV]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_GV] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GV] ([ID_GV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_GV]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_GV] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GV] ([ID_GV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_GV]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_HS] FOREIGN KEY([ID_HS])
REFERENCES [dbo].[HS] ([ID_HS])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_HS]
GO
ALTER TABLE [dbo].[PhanCongDay]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongDay_GV] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GV] ([ID_GV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhanCongDay] CHECK CONSTRAINT [FK_PhanCongDay_GV]
GO
ALTER TABLE [dbo].[PhanCongDay]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongDay_LopHoc] FOREIGN KEY([ID_Lop])
REFERENCES [dbo].[LopHoc] ([ID_Lop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhanCongDay] CHECK CONSTRAINT [FK_PhanCongDay_LopHoc]
GO
ALTER TABLE [dbo].[PhanCongDay]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongDay_MonHoc] FOREIGN KEY([ID_MH])
REFERENCES [dbo].[MonHoc] ([ID_MH])
GO
ALTER TABLE [dbo].[PhanCongDay] CHECK CONSTRAINT [FK_PhanCongDay_MonHoc]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK_Diem] CHECK  (([DiemMieng]>=(0) AND [DiemMieng]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK_Diem_1] CHECK  (([Diem15p]>=(0) AND [Diem15p]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem_1]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK_Diem_2] CHECK  (([DiemThi]>=(0) AND [DiemThi]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem_2]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatDiemTB]    Script Date: 4/20/2025 11:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CapNhatDiemTB]
ON [dbo].[Diem]
AFTER INSERT, UPDATE
AS
BEGIN
INSERT INTO Diem_Log (
        ID_Diem,
        TruocCapNhat_DiemMieng,
        TruocCapNhat_Diem15p,
        TruocCapNhat_DiemThi,
        SauCapNhat_DiemMieng,
        SauCapNhat_Diem15p,
        SauCapNhat_DiemThi
    )
    SELECT 
        i.ID_Diem,
        d.DiemMieng,
        d.Diem15p,
        d.DiemThi,
        i.DiemMieng,
        i.Diem15p,
        i.DiemThi
    FROM inserted i
    JOIN deleted d ON i.ID_Diem = d.ID_Diem;

    UPDATE d
    SET DiemTB = ROUND(
        (ISNULL(i.DiemMieng, 0) + ISNULL(i.Diem15p, 0) + ISNULL(i.DiemThi, 0) * 3) / 5.0, 1)
    FROM Diem d
    INNER JOIN inserted i ON d.ID_Diem = i.ID_Diem;
END;
GO
ALTER TABLE [dbo].[Diem] ENABLE TRIGGER [trg_CapNhatDiemTB]
GO
USE [master]
GO
ALTER DATABASE [DIEM] SET  READ_WRITE 
GO
