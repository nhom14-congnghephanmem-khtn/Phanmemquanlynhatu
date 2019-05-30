USE [DB_PrisonManagement]
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_CheckLoginByMaPhongBan]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_CheckLoginByMaPhongBan]
	@username VARCHAR(50),
	@password VARCHAR(50),
	@ma_phong_ban VARCHAR(20)
AS
BEGIN
    SELECT user_name, password
	FROM dbo.tbl_nguoi_dung
	WHERE user_name = @username AND password = @password
	AND ma_phong_ban = @ma_phong_ban
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElementByID]    Script Date: 5/30/2019 11:22:03 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElementByPassword]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_GetElementByPassword]
	@password VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung WHERE password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElementByUserName]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_GetElementByUserName]
	@user_name VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung WHERE user_name = @user_name
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Nguoi_Dung_GetUserByMa_Phong_Ban]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Nguoi_Dung_GetUserByMa_Phong_Ban]
	@username VARCHAR(50)
AS
BEGIN
    SELECT * FROM dbo.tbl_nguoi_dung
	WHERE user_name = @username
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Pham_Nhan_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Pham_Nhan_InsertOrUpdate]
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
    INSERT INTO dbo.tbl_Pham_Nhan (ma_so, ho_ten, ngay_sinh, noi_sinh, pham_toi, sdt_nguoi_than, tong_so_ngay_giam_giu, muc_do_pham_toi, ngay_tiep_nhan, tinh_trang_tiep_nhan, ma_nguoi_than)
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
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElementByID]    Script Date: 5/30/2019 11:22:03 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Phong_Ban_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID]
	@ma_so VARCHAR(20)
AS
BEGIN
    SELECT ma_so, ho_ten, FORMAT(ngay_sinh,'dd/MM/yyyy') AS ngay_sinh, noi_sinh, loai_suc_khoe, khau_phan_an
	FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
	WHERE ma_so = @ma_so
	AND dbo.tbl_Pham_Nhan.ma_so = dbo.tbl_Tinh_Trang_Pham_Nhan.ma_so_pham_nhan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByTop1]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByTop1]
AS
BEGIN
    SELECT TOP 1 ma_so, ho_ten, FORMAT(ngay_sinh,'dd/MM/yyyy') AS ngay_sinh, noi_sinh, loai_suc_khoe, khau_phan_an 
	FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
	WHERE dbo.tbl_Pham_Nhan.ma_so = dbo.tbl_Tinh_Trang_Pham_Nhan.ma_so_pham_nhan
	ORDER BY ma_so DESC
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements]
AS
BEGIN
    SELECT * 
	FROM dbo.tbl_Pham_Nhan p, dbo.tbl_Tinh_Trang_Pham_Nhan t, dbo.tbl_TKB_Cham_Soc_Pham_Nhan c
	WHERE p.ma_so = t.ma_so_pham_nhan
	AND p.ma_so = c.ma_so_pham_nhan
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Cham_Soc_Pham_Nhan_InsertOrUpdate]
    @ma_so VARCHAR(20),
	@loai_suc_khoe INT,
	@khau_phan_an INT,
	@ngay_gio DATETIME,
	@tinh_trang BIT,
	@ghi_chu NTEXT
AS
BEGIN
    UPDATE dbo.tbl_Tinh_Trang_Pham_Nhan
	SET
		loai_suc_khoe = @loai_suc_khoe,
		khau_phan_an = @khau_phan_an
	WHERE
		ma_so_pham_nhan = @ma_so

	INSERT INTO dbo.tbl_TKB_Cham_Soc_Pham_Nhan (ngay_gio, tinh_trang, ghi_chu, ma_so_pham_nhan)
	VALUES (@ngay_gio, @tinh_trang, @ghi_chu, @ma_so)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Pham_Nhan_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Pham_Nhan_GetElements]
AS
BEGIN
    SELECT * FROM dbo.tbl_Tinh_Trang_Pham_Nhan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements]
AS
BEGIN
    SELECT * FROM dbo.tbl_Pham_Nhan a, dbo.tbl_Tinh_Trang_Pham_Nhan b WHERE a.ma_so = b.ma_so_pham_nhan
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElementsByDateAndTinhTrang]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElementsByDateAndTinhTrang]
	@tinh_trang_tiep_nhan BIT,
	@start DATETIME,
	@end DATETIME
AS
BEGIN
	IF @tinh_trang_tiep_nhan = 0
	BEGIN
		IF (@start IS NULL)
		BEGIN
		    SELECT * FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
			WHERE ma_so = ma_so_pham_nhan
			AND tinh_trang_tiep_nhan = @tinh_trang_tiep_nhan
			AND ngay_tiep_nhan < @end
		END
	    ELSE
		BEGIN
		    SELECT * FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
			WHERE ma_so = ma_so_pham_nhan
			AND tinh_trang_tiep_nhan = @tinh_trang_tiep_nhan
			AND ngay_tiep_nhan BETWEEN @start AND @end
		END
	END
    ELSE
	BEGIN
	    IF (@start IS NULL)
		BEGIN
		    SELECT * FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
			WHERE ma_so = ma_so_pham_nhan
			AND tinh_trang_tiep_nhan = @tinh_trang_tiep_nhan
			AND ngay_phong_thich < @end
		END
	    ELSE
		BEGIN
		    SELECT * FROM dbo.tbl_Pham_Nhan, dbo.tbl_Tinh_Trang_Pham_Nhan
			WHERE ma_so = ma_so_pham_nhan
			AND tinh_trang_tiep_nhan = @tinh_trang_tiep_nhan
			AND ngay_phong_thich BETWEEN @start AND @end
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate]
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
	@loai_suc_khoe INT,
	@so_ngay_da_giam_giu NUMERIC,
	@ngay_phong_thích DATETIME,
	@khau_phan_an INT,
	@chi_tiet_khau_phan NVARCHAR(255),
	@check BIT
AS
BEGIN
	IF @check = 0
	BEGIN
	    INSERT INTO dbo.tbl_Pham_Nhan (ma_so, ho_ten, ngay_sinh, noi_sinh, pham_toi, sdt_nguoi_than, tong_so_ngay_giam_giu, muc_do_pham_toi, ngay_tiep_nhan, tinh_trang_tiep_nhan, ma_nguoi_than)
		VALUES (@ma_so, @ho_ten, @ngay_sinh, @noi_sinh, @pham_toi, @sdt_nguoi_than, @tong_so_ngay_giam_giu, @muc_do_pham_toi, @ngay_tiep_nhan, @tinh_trang_tiep_nhan, @ma_nguoi_than)

		INSERT INTO dbo.tbl_Tinh_Trang_Pham_Nhan (loai_suc_khoe, so_ngay_da_giam_giu, ngay_phong_thich, khau_phan_an, chi_tiet_khau_phan_an, ma_so_pham_nhan)
		VALUES (@loai_suc_khoe, @so_ngay_da_giam_giu, @ngay_phong_thích, @khau_phan_an, @chi_tiet_khau_phan, @ma_so)
	END
    ELSE
	BEGIN
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

		UPDATE tbl_Tinh_Trang_Pham_Nhan
		SET
			loai_suc_khoe = @loai_suc_khoe, 
			so_ngay_da_giam_giu = @so_ngay_da_giam_giu, 
			ngay_phong_thich = @ngay_phong_thích,
			khau_phan_an = @khau_phan_an, 
			chi_tiet_khau_phan_an = @chi_tiet_khau_phan              
		WHERE
			ma_so_pham_nhan = @ma_so
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Pham_Nhan_Get_Tinh_Trang]
	@ma_so VARCHAR(20)
AS
BEGIN
	SELECT *
	FROM tbl_Pham_Nhan pn
	LEFT JOIN tbl_Tinh_Trang_Pham_Nhan tt
	ON pn.ma_so = tt.ma_so_pham_nhan
	WHERE pn.ma_so = @ma_so
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Pham_Nhan_Get_TKB_Tham_Benh]
	@ma_so VARCHAR(20)
AS
BEGIN
	SELECT TOP 1 *
	FROM tbl_TKB_Vieng_Tham_Pham_Nhan tkb
	WHERE tkb.ma_so_pham_nhan = @ma_so
	ORDER BY tkb.ngay_gio_from DESC
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate]    Script Date: 5/30/2019 11:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Pham_Nhan_Get_Elements_With_Condition]
	@muc_do_pham_toi Numeric, @ngayPhongThichFrom datetime, @ngayPhongThichTo datetime
AS
BEGIN
	IF @muc_do_pham_toi = 0
	BEGIN
		SELECT *
		FROM tbl_Pham_Nhan pn
		INNER JOIN tbl_Tinh_Trang_Pham_Nhan tt
		ON pn.ma_so = tt.ma_so_pham_nhan
		AND  tt.ngay_phong_thich between @ngayPhongThichFrom and  @ngayPhongThichTo
	END
    ELSE
	BEGIN
		SELECT *
		FROM tbl_Pham_Nhan pn
		INNER JOIN tbl_Tinh_Trang_Pham_Nhan tt
		ON pn.ma_so = tt.ma_so_pham_nhan
		WHERE pn.muc_do_pham_toi = @muc_do_pham_toi
		AND  tt.ngay_phong_thich between @ngayPhongThichFrom and  @ngayPhongThichTo
	END
END