USE [DB_PrisonManagement]
GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElements]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP PROCEDURE [dbo].[SP_Phong_Ban_GetElements]
GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElementByID]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP PROCEDURE [dbo].[SP_Phong_Ban_GetElementByID]
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElements]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP PROCEDURE [dbo].[SP_Nguoi_Dung_GetElements]
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElementByID]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP PROCEDURE [dbo].[SP_Nguoi_Dung_GetElementByID]
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_CheckLogin]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP PROCEDURE [dbo].[SP_Nguoi_Dung_CheckLogin]
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
/****** Object:  Table [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Pham_Nhan]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Cai_Tao]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Tinh_Trang_Cai_Tao]
GO
/****** Object:  Table [dbo].[tbl_Phong_Ban]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Phong_Ban]
GO
/****** Object:  Table [dbo].[tbl_Phan_Thuong]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Phan_Thuong]
GO
/****** Object:  Table [dbo].[tbl_Pham_Nhan]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Pham_Nhan]
GO
/****** Object:  Table [dbo].[tbl_nguoi_dung]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_nguoi_dung]
GO
/****** Object:  Table [dbo].[tbl_Ki_Nang]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Ki_Nang]
GO
/****** Object:  Table [dbo].[tbl_Khen_Thuong]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Khen_Thuong]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong_Phong_Ban]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Hoat_Dong_Phong_Ban]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP TABLE [dbo].[tbl_Hoat_Dong]
GO
USE [master]
GO
/****** Object:  Database [DB_PrisonManagement]    Script Date: 5/8/2019 1:47:57 AM ******/
DROP DATABASE [DB_PrisonManagement]
GO
/****** Object:  Database [DB_PrisonManagement]    Script Date: 5/8/2019 1:47:57 AM ******/
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
/****** Object:  Table [dbo].[tbl_Hoat_Dong]    Script Date: 5/8/2019 1:47:57 AM ******/
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
/****** Object:  Table [dbo].[tbl_Hoat_Dong_Phong_Ban]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Khen_Thuong]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Ki_Nang]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_nguoi_dung]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Pham_Nhan]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Phan_Thuong]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Phong_Ban]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Cai_Tao]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Pham_Nhan]    Script Date: 5/8/2019 1:47:58 AM ******/
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
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]    Script Date: 5/8/2019 1:47:58 AM ******/
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
/****** Object:  Table [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]    Script Date: 5/8/2019 1:47:58 AM ******/
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
INSERT [dbo].[tbl_Hoat_Dong_Phong_Ban] ([ID], [ten_hoat_dong], [noi_dung], [ngay_dien_ra], [ma_phong_ban]) VALUES (1, N'Khám bệnh định kỳ', N'Khám bệnh định kỳ cho tất cả tù nhân', CAST(N'2019-01-25T00:00:00.000' AS DateTime), N'3')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'1', N'Admin', N'admin', N'admin', N'1', 3, N'Bò, heo, cá')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'2', N'Nguyễn Văn A', N'vana', N'1234', N'2', 2, N'heo, cá')
INSERT [dbo].[tbl_nguoi_dung] ([ma_so], [hoten], [user_name], [password], [ma_phong_ban], [khau_phan_an], [chi_tiet_khau_phan_an]) VALUES (N'3', N'Nguyễn Văn An', N'an', N'1234', N'3', 2, N'heo, cá')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'1', N'Nguyễn Văn Kính', CAST(N'1983-01-23T00:00:00.000' AS DateTime), N'Hải Dương', N'Trộm cắp ', N'0632909785', CAST(1000000 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2017-03-20T00:00:00.000' AS DateTime), 1, N'2')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'2', N'Nguyễn Văn D', CAST(N'1980-02-21T00:00:00.000' AS DateTime), N'Hà Giang', N'Lừa đảo', N'0757891833', CAST(200000 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2018-04-25T00:00:00.000' AS DateTime), 0, N'4')
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'3', N'Hà Thị Trương', CAST(N'1988-06-23T00:00:00.000' AS DateTime), N'Hà Nội', N'Giết người', N'0335013456', CAST(100000000 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2018-06-10T00:00:00.000' AS DateTime), 1, N'5')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (1, N'Hoàn thành t?t nhi?m v?')
INSERT [dbo].[tbl_Phan_Thuong] ([ID], [ten_phan_thuong]) VALUES (2, N'C?i t?o')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'1', N'Quản Trị')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'2', N'Thân Nhân')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'3', N'Cán Bộ Quản Giáo')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'4', N'Bộ Phận Y Tế')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'5', N'Bộ Phận Tiếp Nhận và Phóng Thích Tù Nhân')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'6', N'Bộ Phận Cấp Dưỡng')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'7', N'Bộ Phận Quản Lý')
INSERT [dbo].[tbl_Phong_Ban] ([ma_phong_ban], [ten_phong_ban]) VALUES (N'8', N'Bộ Phận Cải Tạo')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (1, CAST(N'2019-02-05T00:00:00.000' AS DateTime), 2, N'1')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (2, CAST(N'2019-05-02T00:00:00.000' AS DateTime), 3, N'2')
INSERT [dbo].[tbl_Tinh_Trang_Cai_Tao] ([ID], [thoi_gian], [xep_loai], [ma_so_pham_nhan]) VALUES (3, CAST(N'2019-06-30T00:00:00.000' AS DateTime), 1, N'3')
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan]) VALUES (CAST(1 AS Numeric(18, 0)), 1, CAST(30000 AS Numeric(18, 0)), CAST(N'2022-05-02T00:00:00.000' AS DateTime), 3, N'heo, bò, rau', N'1')
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan]) VALUES (CAST(2 AS Numeric(18, 0)), 3, CAST(40000 AS Numeric(18, 0)), CAST(N'2020-05-02T00:00:00.000' AS DateTime), 3, N'heo, cá, bò, rau', N'2')
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan]) VALUES (CAST(3 AS Numeric(18, 0)), 2, CAST(10000 AS Numeric(18, 0)), CAST(N'2021-05-05T00:00:00.000' AS DateTime), 2, N'heo, cá', N'3')
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ON 

INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (11, CAST(N'2019-08-05T15:00:00.000' AS DateTime), 1, N'cần ăn uống đầy đủ', N'1')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (12, CAST(N'2019-02-02T10:00:00.000' AS DateTime), 0, NULL, N'2')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (13, CAST(N'2019-05-05T00:00:00.000' AS DateTime), 1, N'không hút thuốc nhiều', N'3')
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] OFF
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (1, N'1', CAST(N'2019-02-05T09:00:00.000' AS DateTime), CAST(N'2019-02-05T09:30:00.000' AS DateTime))
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
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_CheckLogin]    Script Date: 5/8/2019 1:47:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_CheckLogin]
	@user_name VARCHAR(50),
	@password VARCHAR(50),
	@ma_phong_ban VARCHAR(20)
AS
BEGIN
    SELECT user_name, password
	FROM dbo.tbl_nguoi_dung u
	WHERE u.user_name = @user_name
	AND u.password = @password
	AND u.ma_phong_ban = @ma_phong_ban
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElementByID]    Script Date: 5/8/2019 1:47:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_GetElementByID]
	@ma_so VARCHAR(20)
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung WHERE ma_so = @ma_so
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElements]    Script Date: 5/8/2019 1:47:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_GetElements]
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElementByID]    Script Date: 5/8/2019 1:47:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Phong_Ban_GetElementByID]
	@ma_phong_ban VARCHAR(20)
AS
BEGIN
    SELECT * FROM dbo.tbl_Phong_Ban WHERE ma_phong_ban = @ma_phong_ban
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElements]    Script Date: 5/8/2019 1:47:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Phong_Ban_GetElements]
AS
BEGIN
    SELECT * FROM dbo.tbl_Phong_Ban
END

GO
USE [master]
GO
ALTER DATABASE [DB_PrisonManagement] SET  READ_WRITE 
GO
