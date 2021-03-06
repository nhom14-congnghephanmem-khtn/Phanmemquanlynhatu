﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_BusinessLogicLayers.BLL;
using MVC_ValueObjects;
using Rotativa;

namespace MVC_Presentation.Controllers
{
    public class PageController : Controller
    {
        // GET: Page
        [HttpGet]
        public ActionResult ThemPhamNhan()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            return View();
        }
        [HttpPost]
        public ActionResult ThemPhamNhan(Tinh_Trang_Thong_Tin_Pham_Nhan_Objects obj)
        {
            if(ModelState.IsValid)
            {
                new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().Insert(obj);
                TempData["Message"] = "<script>alert('Bạn đã thêm thành công');</script>";
                return RedirectToAction("ThemPhamNhan");
            }
            return View();
        }
        public ActionResult TinhTrangCaiTao()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            return View();
        }

        [HttpGet]
        public ActionResult CapNhatTinhTrangSucKhoePhamNhan(string ma_so)
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            ViewBag.ma_so = Session["ma_so"];
            Tinh_Trang_Cham_Soc_Pham_Nhan_Objects obj;
            if (Request["txtSearch_Text"] != "")
            {
                obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByID(ViewBag.ma_so);
                if (obj == null)
                {
                    obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByTop();
                }
                return View(obj);
            }
            else
            {
                ma_so = Request["txtSearch_Text"];
                obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByID(ma_so);
                if (obj == null)
                {
                    obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByTop();
                }
            }
            return View(obj);
        }
        [HttpPost]
        public ActionResult CapNhatTinhTrangSucKhoePhamNhan(Tinh_Trang_Cham_Soc_Pham_Nhan_Objects obj)
        {
            if(ModelState.IsValid)
            {
                new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().Update(obj);
            }
            return View();
        }
        public ActionResult DanhSachPhamNhan()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            CultureInfo provider = CultureInfo.InvariantCulture;
            DateTime ngayPhongThichFrom = DateTime.ParseExact("01-01-1970", "dd-mm-yyyy", provider);
            DateTime ngayPhongThichTo = DateTime.ParseExact("01-01-2500", "dd-mm-yyyy", provider);
            List<Pham_Nhan_Search_Result_Objects> objs = new Pham_Nhan_BLL()
                .GetDanhSachPhamNhan(0, ngayPhongThichFrom, ngayPhongThichTo);
            return View(objs);
        }
        public ActionResult DanhSachPhamNhanQuanLy()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            String strMucDoPhamToi = Request["txtSearch_MucDoPhamToi"];
            String strNgayPhongThichFrom = Request["txtSearch_NgayPhongThichFrom"];
            String strNgayPhongThichTo = Request["txtSearch_NgayPhongThichTo"];

            if (String.IsNullOrEmpty(strMucDoPhamToi))
            {
                strMucDoPhamToi = "0";
            }

            if (String.IsNullOrEmpty(strNgayPhongThichFrom) || String.IsNullOrEmpty(strNgayPhongThichTo))
            {
                strNgayPhongThichFrom = "01-01-1970";
                strNgayPhongThichTo = "01-01-2500";
            }

            int mucDoPhamToi = int.Parse(strMucDoPhamToi);
            CultureInfo provider = CultureInfo.InvariantCulture;
            DateTime ngayPhongThichFrom = DateTime.ParseExact(strNgayPhongThichFrom, "dd-mm-yyyy", provider);
            DateTime ngayPhongThichTo = DateTime.ParseExact(strNgayPhongThichTo, "dd-mm-yyyy", provider);
            List<Pham_Nhan_Search_Result_Objects> objs = new Pham_Nhan_BLL()
                .GetDanhSachPhamNhan(mucDoPhamToi, ngayPhongThichFrom, ngayPhongThichTo);
    
            return View(objs);
        }
        public ActionResult DanhSachTuNhanDuocChamSocTrongNgay()
        {
            Session["ma_so"] = Request["txtmaso"];
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            DateTime ngayhientai = DateTime.Now;
            ViewBag.ngay = ngayhientai.ToString("dd/MM/yyyy");
            List<Tinh_Trang_Cham_Soc_Pham_Nhan_Objects> lst = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElmentsByDate(ngayhientai);
            return View(lst);
        }
        public ActionResult GoiYKhauPhanAn()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            return View();
        }
        public ActionResult HoatDongCuaBoPhan()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];

            var maPhongBan = Request["txtSearch_PhongBan"];
            if (String.IsNullOrEmpty(maPhongBan))
            {
                maPhongBan = "1";
            }
            Hoat_Dong_Phong_Ban_Objects ret = new Hoat_Dong_Phong_Ban_Objects();
            ret.PhongBans = new Phong_Ban_BLL().GetDanhSachPhongBan();
            List<Hoat_Dong_Phong_Ban> hoatDong = new Phong_Ban_BLL().GetDanhSachHoatDong(maPhongBan);
            ret.HoatDongs = hoatDong;
            return View(ret);
        }
        public ActionResult TinhTrangPhamNhan()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.maNguoiThan = Session["ma_nhan_than"];
            var tinhTrangPhamNhan = new Pham_Nhan_BLL().GetTinhTrangPhamNhan(ViewBag.maNguoiThan);
            if (tinhTrangPhamNhan == null)
            {
                return View();
            }
            return View(tinhTrangPhamNhan);
        }
        [HttpGet]
        public ActionResult DanhSachPhamNhanTiepNhanPhongThich(DateTime? start, DateTime? end)
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            ViewBag.username = Session["username"];
            ViewBag.than_nhan = Session["ma_nhan_than"];
            var tinhtrang = Request["sltloai"];
            if (Request["txtformday"] == "" && Request["txttoday"] != "")
            {
                start = null;
                end = Convert.ToDateTime(Request["txttoday"]);
            }
            else
            {
                if (Request["txtformday"] == "" && Request["txttoday"] == "")
                {
                    start = null;
                    end = null;
                }
                else
                {
                    if (Request["txtformday"] != null && Request["txttoday"] != null)
                    {
                        start = Convert.ToDateTime(Request["txtformday"]);
                        end = Convert.ToDateTime(Request["txttoday"]);
                    }
                }
            }
            bool tinhtrangtiepnhan;
            List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> lst;
            if (start == null && end == null)
            {
                if (tinhtrang == "0")
                {
                    tinhtrangtiepnhan = false;
                    end = DateTime.Now;
                    Session["tinhtrang"] = tinhtrang;
                    Session["start"] = start;
                    Session["end"] = end;
                    lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
                }
                else
                {
                    if(tinhtrang == "1")
                    {
                        tinhtrangtiepnhan = true;
                        end = DateTime.Now;
                        Session["tinhtrang"] = tinhtrang;
                        Session["start"] = start;
                        Session["end"] = end;
                        lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
                    }
                    else
                    {
                        lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElements();
                    }
                }  
            }
            else
            {
                if (end == null)
                {
                    end = DateTime.Now;
                }
                if (tinhtrang == "0")
                {
                    tinhtrangtiepnhan = false;
                    Session["tinhtrang"] = tinhtrang;
                    Session["start"] = start;
                    Session["end"] = end;
                    lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);    
                }
                else
                {
                    tinhtrangtiepnhan = true;
                    lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
                    Session["start"] = start;
                    Session["end"] = end;
                    Session["tinhtrang"] = tinhtrang;
                }      
            }
            return View(lst);
        }
        [HttpGet]
        public ActionResult InDanhSachPhamNhanTiepNhanPhongThich(string tinhtrang, DateTime? start, DateTime? end)
        {
            var fromday = "";
            var today = "";
            if (Session["start"] == null)
            {
                fromday = "";
            }
            else
            {
                fromday = Session["start"].ToString();
            }
            if (Session["end"] == null)
            {
                today = "";
            }
            else
            {
                today = Session["end"].ToString();
            }
            bool tinhtrangtiepnhan;
            List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> lst;
            if (fromday == "" && today != "")
            {
                start = null;
                end = Convert.ToDateTime(today.ToString());
            }
            else
            {
                if (fromday != "" && today != "")
                {
                    start = Convert.ToDateTime(fromday.ToString());
                    end = Convert.ToDateTime(today.ToString());
                }
            }
            if (start == null && end == null)
            {
                lst = null;
            }
            else
            {
                if (end == null)
                {
                    end = DateTime.Now;
                }
                if (tinhtrang.ToString() == "0")
                {
                    tinhtrangtiepnhan = false;
                    lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
                }
                else
                {
                    tinhtrangtiepnhan = true;
                    lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
                }
            }
            return View(lst);
        }

        public ActionResult PrintViewPDF(string tinhtrang, DateTime? start, DateTime? end)
        {
            var report = new ActionAsPdf("InDanhSachPhamNhanTiepNhanPhongThich", new { tinhtrang = Session["tinhtrang"], start = Session["start"], end = Session["end"] });
            return report;
        }

        [HttpPost]
        public ActionResult ThayDoiTinhTrangTiepNhan(string ma_so)
        {
            if(ModelState.IsValid)
            {
                ma_so = Request["txtmaso"];
                new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().Update(ma_so);
                return RedirectToAction("DanhSachPhamNhanTiepNhanPhongThich");
            }
            return RedirectToAction("DanhSachPhamNhanTiepNhanPhongThich");
        }
    }
}