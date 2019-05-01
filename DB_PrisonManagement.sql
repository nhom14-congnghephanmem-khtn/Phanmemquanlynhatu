USE [DB_PrisonManagement]
GO
/****** Object:  StoredProcedure [dbo].[SP_TKB_Cham_Soc_Pham_Nhan_Insert]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_TKB_Cham_Soc_Pham_Nhan_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_InsertOrUpdate]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_PhamNhan_InsertOrUpdate]
GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_GetElementByID]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_PhamNhan_GetElementByID]
GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_CapNhatTinhTrangSucKhoe]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_PhamNhan_CapNhatTinhTrangSucKhoe]
GO
/****** Object:  StoredProcedure [dbo].[SP_Pham_Nhan_GetElements]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_Pham_Nhan_GetElements]
GO
/****** Object:  StoredProcedure [dbo].[SP_nguoi_dung_login]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP PROCEDURE [dbo].[SP_nguoi_dung_login]
GO
ALTER TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] DROP CONSTRAINT [FK_tbl_TKB_Vieng_Tham_Pham_Nhan_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] DROP CONSTRAINT [FK_tbl_TKB_Cham_Soc_Pham_Nhan_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan] DROP CONSTRAINT [FK_tbl_Tinh_Trang_Pham_Nhan_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao] DROP CONSTRAINT [FK_tbl_Tinh_Trang_Cai_Tao_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_nguoi_dung] DROP CONSTRAINT [FK_tbl_nguoi_dung_tbl_Phong_Ban]
GO
ALTER TABLE [dbo].[tbl_Ki_Nang] DROP CONSTRAINT [FK_tbl_Ki_Nang_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Ki_Nang] DROP CONSTRAINT [FK_tbl_Ki_Nang_tbl_Hoat_Dong]
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong] DROP CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Phan_Thuong]
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong] DROP CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban] DROP CONSTRAINT [FK_tbl_Hoat_Dong_Phong_Ban_tbl_Phong_Ban]
GO
/****** Object:  Table [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Pham_Nhan]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Cai_Tao]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao]
GO
/****** Object:  Table [dbo].[tbl_Phong_Ban]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Phong_Ban]
GO
/****** Object:  Table [dbo].[tbl_Phan_Thuong]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Phan_Thuong]
GO
/****** Object:  Table [dbo].[tbl_Pham_Nhan]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_nguoi_dung]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_nguoi_dung]
GO
/****** Object:  Table [dbo].[tbl_Ki_Nang]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Ki_Nang]
GO
/****** Object:  Table [dbo].[tbl_Khen_Thuong]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Khen_Thuong]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong_Phong_Ban]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP TABLE [dbo].[tbl_Hoat_Dong]
GO
USE [master]
GO
/****** Object:  Database [DB_PrisonManagement]    Script Date: 5/1/2019 10:47:46 PM ******/
DROP DATABASE [DB_PrisonManagement]
GO
/****** Object:  Database [DB_PrisonManagement]    Script Date: 5/1/2019 10:47:46 PM ******/
CREATE DATABASE [DB_PrisonManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_PrisonManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_PrisonManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_PrisonManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_PrisonManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_PrisonManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_PrisonManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_PrisonManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_PrisonManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_PrisonManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_PrisonManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_PrisonManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_PrisonManagement] SET  MULTI_USER 
GO
ALTER DATABASE [DB_PrisonManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_PrisonManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_PrisonManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_PrisonManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_PrisonManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_PrisonManagement] SET QUERY_STORE = OFF
GO
USE [DB_PrisonManagement]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong]    Script Date: 5/1/2019 10:47:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hoat_Dong](
	[ID] [numeric](18, 0) NOT NULL,
	[ten_hoat_dong] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong_Phong_Ban]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban](
	[ID] [int] NOT NULL,
	[ten_hoat_dong] [nvarchar](50) NULL,
	[noi_dung] [nvarchar](50) NULL,
	[ngay_dien_ra] [datetime] NULL,
	[ma_phong_ban] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Khen_Thuong]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Khen_Thuong](
	[ID] [int] NOT NULL,
	[phan_thuong] [int] NULL,
	[ngay] [datetime] NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Ki_Nang]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ki_Nang](
	[ID] [int] NOT NULL,
	[kha_nang] [nvarchar](255) NULL,
	[nang_khieu] [nvarchar](255) NULL,
	[ma_hoat_dong] [numeric](18, 0) NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_nguoi_dung]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nguoi_dung](
	[ma_so] [varchar](20) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[ma_phong_ban] [varchar](20) NULL,
	[khau_phan_an] [int] NULL,
	[chi_tiet_khau_phan_an] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Pham_Nhan]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Pham_Nhan](
	[ma_so] [varchar](20) NOT NULL,
	[ho_ten] [nvarchar](50) NULL,
	[ngay_sinh] [datetime] NULL,
	[noi_sinh] [nvarchar](50) NULL,
	[pham_toi] [nvarchar](50) NULL,
	[sdt_nguoi_than] [varchar](50) NULL,
	[tong_so_ngay_giam_giu] [numeric](18, 0) NULL,
	[muc_do_pham_toi] [numeric](18, 0) NULL,
	[ngay_tiep_nhan] [datetime] NULL,
	[tinh_trang_tiep_nhan] [bit] NULL,
	[ma_nguoi_than] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Phan_Thuong]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Phan_Thuong](
	[ID] [int] NOT NULL,
	[ten_phan_thuong] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Phong_Ban]    Script Date: 5/1/2019 10:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Phong_Ban](
	[ma_phong_ban] [varchar](20) NOT NULL,
	[ten_phong_ban] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phong_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Cai_Tao]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao](
	[ID] [int] NOT NULL,
	[thoi_gian] [datetime] NULL,
	[xep_loai] [tinyint] NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Pham_Nhan]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan](
	[ID] [numeric](18, 0) NOT NULL,
	[loai_suc_khoe] [int] NULL,
	[so_ngay_da_giam_giu] [numeric](18, 0) NULL,
	[ngay_phong_thich] [datetime] NULL,
	[khau_phan_an] [int] NULL,
	[chi_tiet_khau_phan_an] [nvarchar](255) NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
	[tinh_trang_phong_thich] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ngay_gio] [datetime] NULL,
	[tinh_trang] [bit] NULL,
	[ghi_chu] [ntext] NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan](
	[ID] [int] NOT NULL,
	[ma_so_pham_nhan] [varchar](20) NULL,
	[ngay_gio_from] [datetime] NULL,
	[ngay_gio_to] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(1 AS Numeric(18, 0)), N'3GRNFCX3N18BZONAMPPY35DS6SBTVKPP0ZTU2I')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(2 AS Numeric(18, 0)), N'9ZODFOOH8CI6COE5Y3ZHN147')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(3 AS Numeric(18, 0)), N'BJBZVS736FYERY4HB2GCDD0MUUR30V8VHA44DHDKB269FR')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(4 AS Numeric(18, 0)), N'4UZBZNUPXJO50042A72XHTZ4UOW1B7Q63OM81K87ML')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(5 AS Numeric(18, 0)), N'LOBCJ6ZV2CTPBUVGAQSDQSI2CDW1QYVAVNEFJCDVB')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(6 AS Numeric(18, 0)), N'OT9ZBD53YHT7FS6805AY53HITOGFXYDX2E')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(7 AS Numeric(18, 0)), N'OTC2IVM0DHN7M9AC8LD6LBQ5NXP504W51OHEN3R2I3416')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(8 AS Numeric(18, 0)), N'T6NM4BO8IC37EK6H09KH6XRVO5T')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(9 AS Numeric(18, 0)), N'NH7OZ64JIEZKHS54BFO7W13UGOAVERXZHD')
INSERT [dbo].[tbl_Hoat_Dong] ([ID], [ten_hoat_dong]) VALUES (CAST(10 AS Numeric(18, 0)), N'05E87GMYL900DSNJ8GMFL')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (1, N'K8CZA5OS8FP9QG5QHF70B745S6SNKLGHOJ63XVYE', N'VXJF6M6WM6HY9', CAST(N'1967-02-20T04:21:13.490' AS DateTime), N'U3LNMZ')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (2, N'K9BG2IAPHOJBFWC4663D07NZ8L', N'S54GL5KEG9F1EXDYPVPW8XL1I5R5DUBEJDTL49IM6HG', CAST(N'1961-09-14T16:18:59.990' AS DateTime), N'GWF1QV75FF8PGG798X')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (3, N'92TMGTIQYSPQOIY2WW59NUYQOU0HCMB8HC0MO22IW', N'Z478JNGL8CXVJ2XFDF0LX1I04RTFD2QRGA1', CAST(N'1987-07-30T11:22:45.060' AS DateTime), N'GWF1QV75FF8PGG798X')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (4, N'EBHGFV14Q32BIF32XMS1ECGH8CHCEUTNCIFN97E5G8V', N'YJLQDQ56GY22C39QGUDYL64RT185M6', CAST(N'1995-01-08T11:46:17.670' AS DateTime), N'FI25UV')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (5, N'55TKIL4GPVR2VZ73DOQW9EZ0ZGTP7NL6G8B3JWU', N'80JGUTA87VCK5PR3ATZALX2SRFUWC', CAST(N'2001-07-02T11:34:14.260' AS DateTime), N'CYVDMJ61FS20')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (6, N'PDYHRDR90B', N'ZKAJT1TMEX6M639MY12XYCNVTB', CAST(N'1955-11-10T03:55:05.560' AS DateTime), N'FI25UV')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (7, N'RHZYR6SL1SF8', N'QPF', CAST(N'1956-04-25T08:26:54.040' AS DateTime), N'FI25UV')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (8, N'9LLNO4JHUX7WFH9LPJPWWTOH9JXQBS094W76S4KVR9XKR1B', NULL, CAST(N'1989-12-17T15:51:04.330' AS DateTime), N'7QHNMB')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (9, N'JZC8PC5FW3D57T51', N'D', CAST(N'1954-11-27T00:45:52.830' AS DateTime), N'ZD4GU6')
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (10, N'XSJ', N'PVSAMW', CAST(N'2006-12-15T23:43:55.470' AS DateTime), N'DNAM6HSKST8B67')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (1, 9, CAST(N'1991-05-25T11:38:32.980' AS DateTime), N'XHVCRA')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (2, 6, CAST(N'1970-11-26T03:30:26.300' AS DateTime), N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (3, 6, CAST(N'1991-02-19T09:20:48.000' AS DateTime), N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (4, 5, CAST(N'1959-05-23T11:37:43.000' AS DateTime), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (5, 3, CAST(N'1994-05-07T09:36:03.060' AS DateTime), N'CN9OO1OKH32')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (6, 5, CAST(N'1955-09-20T01:36:00.890' AS DateTime), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (7, 5, CAST(N'1976-03-22T21:05:29.700' AS DateTime), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (8, 1, CAST(N'2002-03-26T22:56:03.410' AS DateTime), N'33NGYMIUW')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (9, 10, CAST(N'1985-10-27T15:10:38.220' AS DateTime), N'XJO0BP')
INSERT [dbo].[tbl_Khen_Thuong] ([ID], [phan_thuong], [ngay], [ma_so_pham_nhan]) VALUES (10, 4, CAST(N'1964-09-27T15:54:46.460' AS DateTime), N'DQLS89')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (1, N'HRGM1S45G9L67Z6M9V74RCKV0ZQCYOW01OXJMLTMGB030ULCDFPYJID56LL11R7RDK5J1MZN1KNFBGV6EDYIYYHJASD10RLP49QFP1AQF2WZUXTPQENNSOTE3L899YNAYYB2QGHC283V2IODYNAL3XWFFCB3S1GGFL0VLRZAWBKKLYCLXVAMN1612WNE4EJ1RMGGHTR7N0ORCCUHZQ6XQUSDFZTP', N'SGO2X8MAT0DUQPT1VWK90IXYOUDMR15F20ZDBRDEQW5MV6MGIJ6OQPN9JPE2VZIRUYSPPFQ3I6I4DA3H8W47VH', CAST(9 AS Numeric(18, 0)), N'XHVCRA')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (2, N'L5ISJTYHW3443YNCEOQ15ED8LAXU20IZ122V6ZTIVZ3M1SMV500B3NY6R968W4EVL420WR6FV766BR6SN1O207VE4V3WTKMQL71XQMYDULFWHSV03DLUGCUE8OW1O9LAKFK3P9212A7FRZWBZ2TGZSA8CNO1PXPLZ5C17SAUAJR55FM9RK1LF5BS5CQ2K0C5LLFMNV47RZ5F043X0EA4W35TTKWV189A', N'CDPULDBJRDDSXDWQ2T25K6JW8MWTYVBWC9GC0L5Q6NRQ0H54C51ESB46UTLYGHKV2GGNXJQHNCZXFSWQG', CAST(6 AS Numeric(18, 0)), N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (3, N'MJJ00MWGUUG0VR08T25Q79IGLS3Z95JPU8EKKWZSEO18OTYSVM863KZD12F8IW6OBQ5NDFNW2DCJ79RRTA3MXCMA91JIHQ9HHDXYNBFGZB4Q8G5RANE8SKRY4UECW5FB3U1TBT3IVNNL8V2SVR7UC1OWMZTTX3JTWSNDECGHJWD4X5P8RLG4YLZ2547C0ALR3TPG8PEJBQAF', N'HSUW305AI6Z69P2WOJ1I6SEJQGC7Q1XUIOZR15CFHN1KHH29UJ3CP', CAST(6 AS Numeric(18, 0)), N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (4, N'JZG9K1BMFVATL7943G8AL03G9Z27XT8AJDM5Q3F995OYEMNH4E79242IV0ZLY4PLN097L4D01Z1GC51MCK2I', N'LPEA6NNYJG95N', CAST(5 AS Numeric(18, 0)), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (5, N'Y8EB3AQ3TA4F3BDDGW007723M6QYC8E260OSUWHTNW7PW09TO9VO2IER5BPWKSQLW293MLIKE6DAZC6LXW92DP0OMXMJ6K9V5MTUR5', N'PBUJ7L0JRU18E3D7XL5K2ADQYPSJ4KACUGJIOK43X2YJ8X9KLBIOZ3JFX4KITHF6KPEXJUJDG1MZCUI1F7XS1LCQX4KKZM9FNRYJI', CAST(3 AS Numeric(18, 0)), N'CN9OO1OKH32')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (6, N'3RBAV43RT43ZNIO862KGPYYDTWI5CJCURP6B1F4JI5TF3LLDHEMR6PH4TYGYMYE9R97YBC6RX1YK5J97B5NYWLN272H3Y6XKQJNTDN148VT5RWZAO8NHAGD6M5Q8V2SR4DTLVGUN3IP0RIBB37FPIF996H78WT95211D3EE7EZESQCE4TF5NN29O3JEE8LRA8KYPGX8OS7BI1H', N'0RS58YGJ33MJ2LJM4YCO0F9ZETR7CKVYI4760WDE9D0HXGKNV0N06UBKHTQE696J8N0YEDM7KYEMFS1X93BCWVSNTMO65Z807H8AFL9IEFF8GO5PRT42XUMDVD4SOF2LPDFXJRINUTYHFJ64GZECU52CUVE2GGTYDTI38750BG74W', CAST(5 AS Numeric(18, 0)), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (7, N'U23EGNLHZSDAJZ0ZS83K6EPNW7GUGRQMM0KC57BMM2YX3NOPS8IAXWCFDFI86R181QOIENULWGX3FRJ9IR178FOPO5ZPO2GV0QVDY6B5DXDGZ8ZLV9PFPTZM1', N'XB60BP0PRKA33OCG6D0Z3M13V8TD1DYYGPY3VG43XN2YS54HOUAT4W1BA243VMODMCMEQ8KQ9W2GJ2BP4CP634UJNNSSB18AZOCGJQRFAJK8TLR7REZIXHAHH3R3FSE7NSGVQU6DL9WJJMP1VL0W1PCHEUYFZO0I5CK14VHX8LXOLQYVDP7URH5YFYHVVQEX9DE62OW033OGROWNW329G5RN', CAST(5 AS Numeric(18, 0)), N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (8, N'U9O5WU', N'ML6EL1H60F8BRSPS6RNTP6R2TZSO4G3MRZG2QMI279R8OB4ACHAE3UHFU3KL8S1KBLKRCM1K9KMFFIEIVHBN6PJWI08N2WTE87X2QDXPFP5I820BO1QRHEDM2N9CEEICR777LCRHJL7GK0OF0XY052XTTB033LB16SR0USPCA87V6X11ZTCHFI7OADEABOEXA5AS8NK78MPWU2', CAST(1 AS Numeric(18, 0)), N'33NGYMIUW')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (9, N'22PV6ACGWTB17QF5DTFC067Q9BZC1G80JGX59QPZDZSZNKT9E4ABGI0VVYLVA0EFKAIRS9VN4GZ0D73PHQYX5XK0F1AA4TODLCEC11G48N70JZHOVWDK2HANQIBRZKJASLF1SQOGATOIPJHGJLF7G4A32RMJPO4O4X8XJGW57X98SRY60V7E5BUNBBY135QLP0ESBKW3PAZIU2BATFIUHQJS2KM8HU127OJRD5UGZ4OUBBT80O8NMW3ZHL', N'W9Y3A9UMOL2QHEE0MUAK1M9SB859SSAU8QH1DK4OGJL66X3STL32KHL9Z5R14LTVA8IQWDM1QL4H02ME4CF6P8AQ5818T2', CAST(10 AS Numeric(18, 0)), N'XJO0BP')
INSERT [dbo].[tbl_Ki_Nang] ([ID], [kha_nang], [nang_khieu], [ma_hoat_dong], [ma_so_pham_nhan]) VALUES (10, N'RXOLU8WB6JJWNL1UD1OGRQD7TMDGBKJASG2IBJUME0NPGRK2K1QYT4Y1KGR7VG0MZ847IJJT6', N'UQQWXEDVFZ1CYC48XIDWS5M52YRLOCE8N19QA6PZRG07NWBE0Z3PG5RP4KUZNS72KTOW2DYRTD5B5EI6MCKP9OSHAKMPBPCZ9XNU7FBN1CW20GKP2O', CAST(4 AS Numeric(18, 0)), N'DQLS89')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'0YEA1F4S', N'2AZMEFXJCLO6OK680GBW1AH8ZZTVHP', N'Alfonso753', N'ZJWTKC8WEWWDICCSMFYX9TK3NOH2DH4U4N327PQXHSI7AU', N'ZD4GU6', 4, N'QWNOQQ')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'1AKYG6', N'NEPE855J3J7SAIDN7C19FQGWL6CX8SHBGFRTH8G', N'Tammi394', N'JWOLZM5LKXNSX1WJ13UCZ0Q2RI2296X4LYV1FVRMBK1T9LIT', N'GWF1QV75FF8PGG798X', 2, N'1I5SFJXYF6O26MAHDYIHH2K9471745HO2551CEJUEM2L398IF3DXSX5YXVN7IQUAPZZ0H94ZEN2VZZ5VZIR1SJW5Z63GQ')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'2QKAXPB', N'OPSR8Z02JL7JUH', N'Ronnie325', N'WD2S0A425S7B32QFL6PTGC19TM', N'FI25UV', 5, N'0HUWAWBMB7TOU9D34MTT1Z0843L5W0MQA8ZW1TIY6FP61TT60M5P6HM1HLS6B6QAL3DL9G2B4VNLAT7AAF5')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'9XOP5PVITGB', N'SXT41PDWKA9GWK6NEJ4JF9XOIIGV6ETYPL', N'Jeanette', N'OFWIMTWDVU1A287NTQFJNIP32ARMJ8SOHAEWH', N'CYVDMJ61FS20', 8, N'WVOFIAUZ5G8Z6A7NUIY6PJJ1U1HGA1R38HOFMYKF5RNBFPG7P0AT8TTDBMKGSEP4O4RPLS0WYI1YV8M5LAR9RYUFOB3ZE4MQ1JMAYRLX0EVPSUI20EVINFDQ9B0A')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'B2K2YX0', N'5HBQAUIXLRVKE7', N'Cheryl40', N'73VKHBER2L3IB9QPW377RQ0H3DG9', N'7QHNMB', 9, N'GBCXDKX13MK6LJD1JQYF781NAZQ23NFNKL50KBU3EJSIXO7F8T7MROD79PNDTVYG6WMZECG7VV0OGJQMSBU9GTWV8YQVOGAJLCB0171VC')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'CDN3HJ', N'G9L3WJ05MI8I', N'Bethany22', N'CSRUA6CT1HVHFY04YE84PY1P86N0KBSZE8R9EYW5R8OYQOAU', N'FI25UV', 4, N'VWJTMYFF1BMZPFLYF8WKKTKBT1RNDHWV1GEOJKZA0M9T8NWU79V2ILP2C80K7R2KFQY80WEV8LJXKR265WF4LTDGRCCAJE39KPDHONTBUZTW1RIK5TFBBXYLDIHOK4BUI9DUDKHI24AM0HEZUR4PYSXMRS4655RQOYDREN6LCX87NCKV4IUSZLVQCQ3')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'EISSG7', N'YI1XXLUU1O14YRO24LO6ZEA8NE76NPMSP8BRHY8RY7WZR', N'Leonardo223', N'JXGUNHU3S5MHZ6XWDMGGHQ0FX3GQ9G5LRXEFUADAIC4', N'U3LNMZ', 2, N'F037AUCGWCYKK9T68PMU791PVOBKNJYTTZJXWT3LC2GM6XPVDZHS6JH6YDCLISSCE5QKQWAE')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'NM2M9H', N'N64RKONPDBZKYITWYSS2T7BB1W', N'Beverly', N'T9EIS1I5LTHK2CDZJ6Y5V45C71FZXT5', N'GWF1QV75FF8PGG798X', 4, N'CNSSV4A706YEJ4UAYYQS8ZZTH63U0B5O82BF2631KRHK2E0SAP85QY4COZBP1G6P0A6HSF7RUO7HHEQ35AJB30Y9YZQ3VE04KSJR8I0VHGB1RMU988JQWVM0BWJSO4WGN3XPUYVN9OTMOWHB5HUNU97O5IFBZ86DKVDOP4F9')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'QQH9U5', N'VRJ6YVKM8LOCWIMJXSXDXMUVOFEOFUSPN', N'Ernesto43', N'', N'FI25UV', 9, N'WH720CEE7N7A8LEV8JBIJN1HF2TJTL02KAYSZL561WSKZ3B9ZSHK3QT9FPMXIVLMN5PYNLVME4HMVGICQKJ14FYTGPC9Z7O5B5XTDDMDXU6Y86DY797XBKI86VHY8LN6GCBPJOZCY63980LABD2P0QTRNONHWN4B6Z')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'WFQ4US', N'ICL2BJL4A8XY4MOUDFJV33B', N'Nicholas185', N'DNOGXIBU5ZT5WU5JWR18U9ALWP1FGBDSTF3EP1', N'DNAM6HSKST8B67', 6, N'0LI0OZD0')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'33NGYMIUW', N'3ZCWFK8WP4WZ3FUDY5V9SZEQCO3SXAC18HNCZ', CAST(N'1992-05-18T03:15:48.440' AS DateTime), N'PJZAV1O4PAWGQJH4', N'B4YBXVB2I7TIHOOUECT45IOE9AEDMN6AIMAKMCW', N'0632909785', CAST(6666234 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'1976-05-15T02:24:26.380' AS DateTime), 0, N'MHOT')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'45KJY0', N'ET0ECJCQCVYN', CAST(N'1953-12-04T23:53:34.390' AS DateTime), N'7P', N'WYGVT4OFLV98431RHB7MMD9T4N9', N'0757891833', CAST(1493561 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'1965-08-12T14:46:04.250' AS DateTime), 0, N'PV5VU2WF7AWN5RFVQA')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'CN9OO1OKH32', N'QCMZFH0SIF', CAST(N'1989-06-27T17:35:01.800' AS DateTime), N'', N'PO36GM1ICKXM9I2SGJ1MHXG', N'0625394642', CAST(5219352 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2002-11-15T15:27:31.680' AS DateTime), 0, N'9ETVLDC2E1945K')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'DQLS89', N'QZXGMFUJ8JH91NVX4RXD05H7C4674XF2AE2BOG', CAST(N'1988-12-29T17:25:30.410' AS DateTime), N'74AI', N'I0AV06R58M96BZ03RSQUD0WY55', N'0635761512', CAST(764268 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'1974-10-28T07:26:42.460' AS DateTime), 0, N'40DKWK3')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'E3KU6DQCAE2YTTBOHVO', N'51N39ZYZ0SSXQRBB', CAST(N'2007-02-22T20:24:58.250' AS DateTime), N'CT37G2LPG1S10D49M9GHJX29MGXE5RC81QH2L', N'6OBACF1675W52OFTKE106C5UMOKNTE1', N'0414982115', CAST(7804619 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'1962-10-25T06:45:01.070' AS DateTime), 0, N'UTALJOFFZ6G1J')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'FC63DIR2XMHOA4KIHL1V', N'6XVV5MWRLV62PGRP', CAST(N'1997-09-14T18:01:34.640' AS DateTime), N'K6K27JRIH3OJUZCTQERUKZ56J', N'MEA5I60ECZ2N', N'0514183009', NULL, CAST(4 AS Numeric(18, 0)), CAST(N'1958-02-22T07:40:45.860' AS DateTime), 1, N'IK2Q6LX3GGVSSY8')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'I9PYDH', N'EAL9SEKJN3I2PJ7I0A687G1L9SP1BQCKDSP0CBOVG2SVJLO', CAST(N'1985-05-18T06:26:00.010' AS DateTime), N'0O06JAKSDK2FQXGD9CYIPSQSJIXLXHVDFHSNPOTE080XB', N'AD8MEQ2WRAU49M2SVD', N'0704021501', CAST(6784039 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'1992-10-11T00:16:57.140' AS DateTime), 1, N'1KIB')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'JT4GH0', N'J04R0JSD8YW6Z0P51WMTBLWDUNJMW0LRZRVRQZL', CAST(N'1956-10-31T20:16:28.770' AS DateTime), N'RXK0DIIU7I67NUPA1X9O7CG0BGXRCNRASP', N'G9EHFHXN9V02QJ00JI32AA1S795XM648BV6Z3LDYMECLWE4', N'0344728949', CAST(6446590 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'1957-05-22T20:27:25.070' AS DateTime), 0, N'59UL8L02FLNMD5W')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'XHVCRA', N'2DRCRKUY90ZZPJ7WQXOWU76OMBS4', CAST(N'1991-11-29T05:51:46.020' AS DateTime), N'PMBLNS6YE7Y8M0DZUWOO095SNLJJIHSSG9SB', N'NYZ2V7DKVQU5SGUTHDUD6AS4G6MQQGP3I', N'0787362447', CAST(8811592 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'1978-09-27T15:25:47.580' AS DateTime), 0, N'F2NYPJ9')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'XJO0BP', N'PRBWGG3KLJRGGZFSVQLSID5EIMTKXPJ5OG', CAST(N'1999-11-18T19:17:34.720' AS DateTime), N'QMXDW803', N'0I0UD38', N'0344964354', CAST(1590419 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'1982-09-28T11:50:10.820' AS DateTime), 0, N'WZCNGRCUQRWH66JZDPY')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (1, N'V15LN7A78IY0FBPYW0OBFIRYV66V0S3C1C286O3ZXYNRBZQHEB9JELLCA7PG1F7GELY38HR7XODHVZMVGPHOIJYFRQYYZMYIR7CP0M8XJ2MP83HALT0BXIYVNJCIIT7AQUPNMWVUGJ4FW97N8ND6MMK88H2HAQEQUCYEDTNPY6VEDIYDBO9VF1N39HE5TDJQ5DLKAS9FZN8GR6UQJO5MGJBSPV5WEIVKM590WD3JEUVRT6C2MOL57X9L')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (2, N'SVFMD0GSNTMXUT5LM7MNJZII3AQXQDPVNX4INW1UEZ6DP5SUGKLQMYJSDWJ39J294QAWPNXP5S9KT5SXHVG5SZ8PEB5RCYKUWW8ZUV5TNVLUPYZ83LLD3WH5HKHDI5D67ENXWT3MQNIXEE0GCWNQD7RZE3HADSBHHENAA2CAIYNFEKQ3K11LIMS0MOISBS8YC1FZQP59KD7EJCLUCEPBQPYVMNOMKJYQPP2C4RCVWR05FD')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (3, N'A2NFX3W7M2KD31IP0EHOU98PL1UFZPTF87EKW40NSHG9KE9TE2ZQXOL0TXUW8H8X945WMXSWDUWCTY56R00WP2HJLDQYA3EB9I0F9D7G93C3S87USN57GB87MLA97TM9FK2AYPXETKNM')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (4, N'EQC5W6MY6UYATTN2X9FH2N86XV3PREWNLH8VX3ANZB8Q4Z5V9BWB74MQI6802X7SYAOBLS4TYSH')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (5, N'EH2XQ7FFIKGHVHCRVAK13GRTAUAH62CFMUB04A9VHRADU7G3GDYN7GNYQ8M')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (6, N'WY9F80U05BNK0PKC5EZ3E71T4P8')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (7, N'6DAVODYJIU5TDFX4QDMHVBSB9JIPXGBISNTS1RWNQ0TB85PY9W3Q2QBVKYM4V8M1JM1QL53YHZQVHH24TJG0DKG1CY725RRHERRM4ZC3T4920FD2VHBCSLOZ5ZENX1TP88GPQGZU6C78AD1WL46NFFPS3RG4LP6RBKURYNCFIH5GEGPSYH2SV59SJOMY0U8H6FXQJ9XXSQ5YA9')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (8, N'M2O63NDW5A28A0EFN8N9YIZ9OK4040BIA9ZVBO5TSISFG1MWDBHPMZF43FIIJDS4ZJX01I3Z2THGQJSMX7MSILWAUVRW5MAFPNGX3MVV8IMSHZEKNVLBQ0LDNN65Q6TGJ2Q23VIBCRJ0Y3SVH7991ZOP22')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (9, N'GFP41O69F9BGSD9ZZGKFJUBOIXJEJD0Z0L2VMNHBRUDM5RHWS0P8HMPM41L45SP28BF6ADCCY9OPHPIRGMLJOSIEVFRL1D6Y5ADTBALEOD98Y05FIUNI66DFT1BVMQAL2PJ6BPF617VBJAFUAB37QOSYWY0AZQSX2O59GY4SEHGZB2WJLGKAN3UEXL9D')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (10, N'57AEX9U56EB7AS97SNU1GOJ5IAYTQCVPR38A6LDT1DF182CAL74YFB8HN4VNA1ETIMG7KY0790Z3')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'7QHNMB', N'VFKJD2OT1GKDU0CSB2HT11A8H1H54NZ4EEJG5Y24JZAICMSB9MULB7CU4B2')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'BGSE43', N'XPHPH8A48BSZ066PXLR2MBS6I9DZB9ZHYJ6D20NEDHITUI')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'CYVDMJ61FS20', N'KJPEGGZFGVMC0DA2RSWU86VHTES61PBUWQJ09V1VNCUDZHKYXA3CF72EN8K2OSERJSG9T')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'DNAM6HSKST8B67', N'NYSYD6ZXMWB68UASYCB1HZSMXYCP4SZC0QQ0JALAZLKGRT')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'FI25UV', N'J2OKGIH1N561FTASTXY6H398OQ02VFCU3ITNG8ITIO2VD86HOTQISNXF')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'GWF1QV75FF8PGG798X', N'FWQIF68TBYX0NCLE5NT1')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'JXUF2K', N'TQWJ00WUWEY627ERQ6DOLHAILNPPTT4PWGG11J4FUJN3DRIQASQ0NBQBFEXDA713A89')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'PIA646', N'RDQ72XT1T74T5ZE1242KP5MNLQ4NIKT4HVZX2')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'U3LNMZ', N'')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'ZD4GU6', N'SVR07VBIHBTU9RMZFOO5C1AY7UY3T71B4NH7LE0635Q99UIN5KDRLOXRKSTCX7O9AIQM9EE0')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (1, CAST(N'2005-08-16T02:14:57.530' AS DateTime), 2, N'XHVCRA')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (2, CAST(N'1996-10-12T10:37:25.480' AS DateTime), 0, N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (3, CAST(N'1984-09-17T17:45:48.010' AS DateTime), 1, N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (4, CAST(N'1969-04-14T14:08:54.390' AS DateTime), 3, N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (5, CAST(N'1965-07-30T21:04:07.490' AS DateTime), 4, N'CN9OO1OKH32')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (6, CAST(N'1975-03-14T09:55:17.720' AS DateTime), 1, N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (7, CAST(N'1998-11-24T14:44:13.710' AS DateTime), 1, N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (8, CAST(N'1993-11-01T09:35:04.770' AS DateTime), 1, N'33NGYMIUW')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (9, CAST(N'1985-05-13T17:20:10.580' AS DateTime), 4, N'XJO0BP')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (10, CAST(N'1977-10-30T05:23:37.340' AS DateTime), 4, N'DQLS89')
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(57411346000000000 AS Numeric(18, 0)), 3, CAST(442790 AS Numeric(18, 0)), CAST(N'2006-01-31T06:27:45.580' AS DateTime), 49, N'F4PCRFHRIOFMQFQZ0AQ03DCEBT3IADBA5FD8HGOFJVRJ6IWZYPM11IW1SA1XCYG5C5GB1HIJMAH7MS8SW4JLQ98NICG6FQ3KEL602LXG62FR0PEZ2818EVE2XSTP1C4W7XS0L7QB63EOUHMTXG36PU5J7439R8EUXJJ3WEDUIP2BGQ8G60RK8Y7DR8TH4HKXOKQBXIWJ38OZST3GVN3RGUMZB6BNKVQ154MW0WIN38HZA7KY5CLGDSGUXQZR7', N'XHVCRA', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(68796659000000000 AS Numeric(18, 0)), 1, CAST(421323 AS Numeric(18, 0)), CAST(N'1996-06-14T05:00:43.270' AS DateTime), 16, N'B3UG9Q9CM3SUDK7XU9ML8LINT7WNRL57QIOWHMKY', N'DQLS89', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(83873328000000000 AS Numeric(18, 0)), 1, CAST(550143 AS Numeric(18, 0)), CAST(N'1999-05-24T14:35:52.570' AS DateTime), 14, N'Y7IMUN67GY5FN7CNP4LDI79ANCNSY9XQGUA9GNCWRXVMBY58HA1V5TQQX8ZH0E971EZTX361RPLKBMYO7EBO71KM3JC8NVWDOOLXYBBE4Z4G76EA9AAL3K00TCPEQXEWS8VN11QV3WK7X3EW41YCKBA3OL3MMWN6L7OZBR98KEH60S2PXS9PY1BGYRZGX3', N'FC63DIR2XMHOA4KIHL1V', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(404338264000000000 AS Numeric(18, 0)), 2, CAST(92666 AS Numeric(18, 0)), CAST(N'1982-09-27T11:39:07.420' AS DateTime), 99, N'AF5W87PBDQ994540TQJ6N3AKSSZWTMWBGAUGEFF4W32EGGKES3ZJ1V275L4G7SHRTXST', N'E3KU6DQCAE2YTTBOHVO', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(572272340000000000 AS Numeric(18, 0)), 1, CAST(398095 AS Numeric(18, 0)), CAST(N'1981-09-12T14:45:31.990' AS DateTime), 65, N'3NXEAOQ3DEFIHUE143YVRIQK7AW3BFJ4FND4AURCSZOC0ZC2TPTAJXZKXD70RMRY', N'XJO0BP', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(620628519000000000 AS Numeric(18, 0)), 2, CAST(39319 AS Numeric(18, 0)), CAST(N'1993-08-09T08:53:52.370' AS DateTime), 44, N'68DLPFFLDSQS6U32VIEOTNX8KW70JRSBG5AXN6CAI6VX895MUO3YIFFJA51T7F2LZEB0K5FP645NR0ZAQL5UNUS1PQMI4I2249XTY42P9ERE9SRA5R2M97X5MABTJXKN13IH26CMJGL92DRWZCCDFFTWBS7NT86CU4C6998ZEG3TMO28JEU6K67M9M59Z', N'FC63DIR2XMHOA4KIHL1V', 0)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(734393965000000000 AS Numeric(18, 0)), 2, CAST(1583 AS Numeric(18, 0)), CAST(N'1977-12-01T18:40:15.260' AS DateTime), 91, N'TAA9EY0KNP4DYZCZ9NPY4EEZRNWQXM4YZPNSID947YQ5278799CIK0KEWBHR1AN0L5D9CKHWDKQ5N9W', N'CN9OO1OKH32', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(924418077000000000 AS Numeric(18, 0)), 3, CAST(75096 AS Numeric(18, 0)), CAST(N'1968-11-13T20:49:55.340' AS DateTime), 51, NULL, N'E3KU6DQCAE2YTTBOHVO', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(926568298000000000 AS Numeric(18, 0)), 2, CAST(969004 AS Numeric(18, 0)), CAST(N'1978-11-20T16:45:31.990' AS DateTime), 98, N'OMEAFAK0W4C8L4PMCAL7NASBZW3MBKINQ33HL9MKI79HR8MOR4HN6MMDT2BI7YOBLPII0803O1PG1BJRAEV63VG3GPNIX3DKIXV2P4OI4DZ5X6CIIJ8S3I8Q8E1AKH5LO4Y3FH16QC2PVB6AD5ZDUKH0P5TB2DYM7DHS8820I21QFIUW7RXEHS', N'33NGYMIUW', 1)
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan], [tinh_trang_phong_thich]) VALUES (CAST(949737350000000000 AS Numeric(18, 0)), 1, CAST(148867 AS Numeric(18, 0)), CAST(N'1954-04-03T06:32:27.980' AS DateTime), 90, N'FPHNALEZ58W7VI3XBQKXTZVPSG5Z9EQNEXCCS0QZRE33N91VHTUXOZQGTSUUFFPRI9SX5R4B0K5FVR1JEAIGJTYF7WI05VJCOCLEG4PPOJW4TAK1', N'E3KU6DQCAE2YTTBOHVO', 0)
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ON 

INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (1, CAST(N'2001-08-11T14:46:35.550' AS DateTime), 1, N'A', N'XHVCRA')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (2, CAST(N'1992-06-15T04:11:38.620' AS DateTime), 1, N'URWC77EM', N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (3, CAST(N'1958-09-21T17:08:34.840' AS DateTime), 0, N'6FSZLNYGTT3', N'FC63DIR2XMHOA4KIHL1V')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (4, CAST(N'1976-06-30T10:24:48.810' AS DateTime), 0, N'KNIBSDOJ9S', N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (5, CAST(N'2000-12-05T16:50:37.750' AS DateTime), 1, N'OTZHY0GMED68', N'CN9OO1OKH32')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (6, CAST(N'1961-01-18T04:34:38.320' AS DateTime), 1, N'T', N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (7, CAST(N'1978-01-02T21:32:17.050' AS DateTime), 0, N'F8S95364A4D0ETP3', N'E3KU6DQCAE2YTTBOHVO')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (8, CAST(N'1963-07-27T15:48:41.680' AS DateTime), 0, N'E546M6ZFC7PZDFL', N'33NGYMIUW')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (9, CAST(N'2005-10-24T02:50:05.370' AS DateTime), 1, N'RXFQZN6H', N'XJO0BP')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (10, CAST(N'1988-12-13T18:42:49.300' AS DateTime), 1, N'OCKZ2', N'DQLS89')
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] OFF
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (1, N'XHVCRA', CAST(N'1973-05-04T20:00:54.080' AS DateTime), CAST(N'2002-01-26T18:59:23.600' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (2, N'FC63DIR2XMHOA4KIHL1V', CAST(N'1978-12-06T10:34:25.450' AS DateTime), CAST(N'1995-01-25T08:10:05.710' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (3, N'FC63DIR2XMHOA4KIHL1V', CAST(N'1984-03-02T18:33:18.730' AS DateTime), CAST(N'1967-08-13T08:16:39.200' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (4, N'E3KU6DQCAE2YTTBOHVO', CAST(N'1964-05-05T06:49:17.880' AS DateTime), CAST(N'1976-01-30T17:05:49.760' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (5, N'CN9OO1OKH32', CAST(N'1988-06-09T14:35:19.200' AS DateTime), CAST(N'1958-04-10T14:26:45.510' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (6, N'E3KU6DQCAE2YTTBOHVO', CAST(N'2002-01-13T01:33:03.610' AS DateTime), CAST(N'1995-02-06T01:11:48.590' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (7, N'E3KU6DQCAE2YTTBOHVO', CAST(N'1992-03-14T15:41:44.750' AS DateTime), CAST(N'1961-11-05T18:27:10.760' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (8, N'33NGYMIUW', CAST(N'1976-01-10T14:57:19.520' AS DateTime), CAST(N'2003-08-13T22:59:08.910' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (9, N'XJO0BP', CAST(N'1995-05-05T21:55:14.780' AS DateTime), CAST(N'2002-02-23T00:15:26.790' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (10, N'DQLS89', CAST(N'1987-04-18T15:51:10.250' AS DateTime), CAST(N'2007-07-29T18:19:55.230' AS DateTime))
ALTER TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hoat_Dong_Phong_Ban_tbl_Phong_Ban] FOREIGN KEY([ma_phong_ban])
REFERENCES [dbo].[tbl_Phong_Ban] ([ma_phong_ban])
GO
ALTER TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban] CHECK CONSTRAINT [FK_tbl_Hoat_Dong_Phong_Ban_tbl_Phong_Ban]
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong] CHECK CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Phan_Thuong] FOREIGN KEY([phan_thuong])
REFERENCES [dbo].[tbl_Phan_Thuong] ([ID])
GO
ALTER TABLE [dbo].[tbl_Khen_Thuong] CHECK CONSTRAINT [FK_tbl_Khen_Thuong_tbl_Phan_Thuong]
GO
ALTER TABLE [dbo].[tbl_Ki_Nang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ki_Nang_tbl_Hoat_Dong] FOREIGN KEY([ma_hoat_dong])
REFERENCES [dbo].[tbl_Hoat_Dong] ([ID])
GO
ALTER TABLE [dbo].[tbl_Ki_Nang] CHECK CONSTRAINT [FK_tbl_Ki_Nang_tbl_Hoat_Dong]
GO
ALTER TABLE [dbo].[tbl_Ki_Nang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ki_Nang_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_Ki_Nang] CHECK CONSTRAINT [FK_tbl_Ki_Nang_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_nguoi_dung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_nguoi_dung_tbl_Phong_Ban] FOREIGN KEY([ma_phong_ban])
REFERENCES [dbo].[tbl_Phong_Ban] ([ma_phong_ban])
GO
ALTER TABLE [dbo].[tbl_nguoi_dung] CHECK CONSTRAINT [FK_tbl_nguoi_dung_tbl_Phong_Ban]
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tinh_Trang_Cai_Tao_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao] CHECK CONSTRAINT [FK_tbl_Tinh_Trang_Cai_Tao_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tinh_Trang_Pham_Nhan_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan] CHECK CONSTRAINT [FK_tbl_Tinh_Trang_Pham_Nhan_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TKB_Cham_Soc_Pham_Nhan_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] CHECK CONSTRAINT [FK_tbl_TKB_Cham_Soc_Pham_Nhan_tbl_Pham_Nhan]
GO
ALTER TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TKB_Vieng_Tham_Pham_Nhan_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] CHECK CONSTRAINT [FK_tbl_TKB_Vieng_Tham_Pham_Nhan_tbl_Pham_Nhan]
GO
/****** Object:  StoredProcedure [dbo].[SP_nguoi_dung_login]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_nguoi_dung_login]
	@user_name VARCHAR(50),
	@password VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung WHERE user_name = @user_name AND password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Pham_Nhan_GetElements]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Pham_Nhan_GetElements]
AS
BEGIN
    SELECT * FROM dbo.tbl_Pham_Nhan
END

GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_CapNhatTinhTrangSucKhoe]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_PhamNhan_CapNhatTinhTrangSucKhoe]
	@ma_so_pham_nhan VARCHAR(20),
	@loai_suc_khoe INT,
	@khau_phan_an INT,
	@ghi_chu NTEXT,
	@ngay_gio DATETIME
AS
BEGIN
    UPDATE dbo.tbl_Tinh_Trang_Pham_Nhan
	SET
		loai_suc_khoe = @loai_suc_khoe,
		khau_phan_an = @khau_phan_an
	WHERE
		ma_so_pham_nhan = @ma_so_pham_nhan

	UPDATE dbo.tbl_TKB_Cham_Soc_Pham_Nhan
	SET
		ngay_gio = @ngay_gio,
		ghi_chu = @ghi_chu
	WHERE
		ma_so_pham_nhan = @ma_so_pham_nhan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_GetElementByID]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_PhamNhan_GetElementByID]
	@ma_so_pham_nhan VARCHAR(20)
AS
BEGIN
	SELECT * FROM dbo.tbl_Pham_Nhan WHERE ma_so = @ma_so_pham_nhan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PhamNhan_InsertOrUpdate]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_PhamNhan_InsertOrUpdate]
	@ma_so VARCHAR(20),
	@ho_ten NVARCHAR(50),
	@ngay_sinh DATETIME,
	@noi_sinh NVARCHAR(50),
	@pham_toi NVARCHAR(50),
	@sdt_nguoi_than VARCHAR(50),
	@tong_so_ngay_giam_giu NUMERIC,
	@muc_do_pham_toi NUMERIC,
	@ngay_tiep_nhan DATETIME,
	@tinh_trang_tiep_nhan BIT,
	@ma_nguoi_than VARCHAR(20),
	@check BIT
AS
BEGIN
	IF @check = 0
	INSERT INTO dbo.tbl_Pham_Nhan(ma_so, ho_ten, ngay_sinh, noi_sinh, pham_toi, sdt_nguoi_than, tong_so_ngay_giam_giu, muc_do_pham_toi, ngay_tiep_nhan, tinh_trang_tiep_nhan, ma_nguoi_than)
	VALUES (@ma_so, @ho_ten, @ngay_sinh, @noi_sinh, @pham_toi, @sdt_nguoi_than, @tong_so_ngay_giam_giu, @muc_do_pham_toi, @ngay_tiep_nhan, @tinh_trang_tiep_nhan, @ma_nguoi_than)
	ELSE
	UPDATE tbl_Pham_Nhan
	SET 
		ho_ten = @ho_ten, 
		ngay_sinh = @ngay_sinh, 
		noi_sinh = @noi_sinh, 
		pham_toi = @pham_toi, 
		sdt_nguoi_than = @sdt_nguoi_than, 
		tong_so_ngay_giam_giu = @tong_so_ngay_giam_giu,
		muc_do_pham_toi = @muc_do_pham_toi, 
		ngay_tiep_nhan = @ngay_tiep_nhan, 
		tinh_trang_tiep_nhan = @tinh_trang_tiep_nhan, 
		ma_nguoi_than = @ma_nguoi_than
	WHERE
		ma_so = @ma_so
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TKB_Cham_Soc_Pham_Nhan_Insert]    Script Date: 5/1/2019 10:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TKB_Cham_Soc_Pham_Nhan_Insert]
	@ngay_gio DATETIME,
	@tinh_trang BIT,
	@khau_phan_an INT,
	@ghi_chu NTEXT,
	@ma_so_pham_nhan VARCHAR(20)
AS
BEGIN
    INSERT INTO dbo.tbl_TKB_Cham_Soc_Pham_Nhan(ngay_gio, tinh_trang, khau_phan_an, ghi_chu,  ma_so_pham_nhan)
    VALUES(@ngay_gio, @tinh_trang, @khau_phan_an, @ghi_chu, @ma_so_pham_nhan)
END
GO
USE [master]
GO
ALTER DATABASE [DB_PrisonManagement] SET  READ_WRITE 
GO
