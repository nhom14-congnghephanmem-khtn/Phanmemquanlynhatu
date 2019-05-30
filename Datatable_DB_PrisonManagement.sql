USE [DB_PrisonManagement]
GO
/****** Object:  Table [dbo].[tbl_Hoat_Dong]    Script Date: 5/30/2019 1:46:33 PM ******/
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
/****** Object:  Table [dbo].[tbl_Hoat_Dong_Phong_Ban]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Khen_Thuong]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Ki_Nang]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_nguoi_dung]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Pham_Nhan]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Phan_Thuong]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Phong_Ban]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Cai_Tao]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_Tinh_Trang_Pham_Nhan]    Script Date: 5/30/2019 1:46:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tinh_Trang_Pham_Nhan](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan]    Script Date: 5/30/2019 1:46:34 PM ******/
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
/****** Object:  Table [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]    Script Date: 5/30/2019 1:46:34 PM ******/
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
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'PC100', N'Nguyễn Quốc Thái', CAST(N'2019-05-06T11:17:00.000' AS DateTime), N'Long An', N'Lừa đảo', N'0332152112', CAST(500 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2018-05-23T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[tbl_Pham_Nhan] ([ma_so], [ho_ten], [ngay_sinh], [noi_sinh], [pham_toi], [sdt_nguoi_than], [tong_so_ngay_giam_giu], [muc_do_pham_toi], [ngay_tiep_nhan], [tinh_trang_tiep_nhan], [ma_nguoi_than]) VALUES (N'PC101', N'Nguyễn Văn B', CAST(N'1993-02-02T17:30:00.000' AS DateTime), N'Sái Gòn', N'Lừa đảo', N'0312342421', NULL, CAST(2 AS Numeric(18, 0)), CAST(N'2016-04-30T00:00:00.000' AS DateTime), 0, NULL)
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
SET IDENTITY_INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ON 

INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan]) VALUES (CAST(2 AS Numeric(18, 0)), 1, CAST(100 AS Numeric(18, 0)), CAST(N'2023-05-06T00:00:00.000' AS DateTime), 1, NULL, N'PC100')
INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] ([ID], [loai_suc_khoe], [so_ngay_da_giam_giu], [ngay_phong_thich], [khau_phan_an], [chi_tiet_khau_phan_an], [ma_so_pham_nhan]) VALUES (CAST(3 AS Numeric(18, 0)), 2, CAST(200 AS Numeric(18, 0)), CAST(N'2020-04-30T00:00:00.000' AS DateTime), 2, NULL, N'PC101')
SET IDENTITY_INSERT [dbo].[tbl_Tinh_Trang_Pham_Nhan] OFF
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ON 

INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (1, NULL, 1, N'Sức khỏe yếu lắm', N'PC101')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (2, CAST(N'2019-05-31T00:20:00.000' AS DateTime), 1, N'Sức khỏe yếu lắm', N'PC101')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (3, CAST(N'2019-06-07T09:39:00.000' AS DateTime), 1, N'Sức khỏe cần bồi dưỡng', N'PC100')
INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] ([ID], [ngay_gio], [tinh_trang], [ghi_chu], [ma_so_pham_nhan]) VALUES (4, CAST(N'2019-06-06T01:05:00.000' AS DateTime), 1, N'Ăn uống điều độ ', N'PC100')
SET IDENTITY_INSERT [dbo].[tbl_TKB_Cham_Soc_Pham_Nhan] OFF
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (1, N'PC100', CAST(N'2019-05-30T06:00:00.000' AS DateTime), CAST(N'2019-05-30T12:00:00.000' AS DateTime))
INSERT [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] ([ID], [ma_so_pham_nhan], [ngay_gio_from], [ngay_gio_to]) VALUES (2, N'PC100', CAST(N'2019-05-29T01:00:00.000' AS DateTime), CAST(N'2019-05-29T05:00:00.000' AS DateTime))
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
ALTER TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TKB_Vieng_Tham_Pham_Nhan_tbl_Pham_Nhan] FOREIGN KEY([ma_so_pham_nhan])
REFERENCES [dbo].[tbl_Pham_Nhan] ([ma_so])
GO
ALTER TABLE [dbo].[tbl_TKB_Vieng_Tham_Pham_Nhan] CHECK CONSTRAINT [FK_tbl_TKB_Vieng_Tham_Pham_Nhan_tbl_Pham_Nhan]
GO
