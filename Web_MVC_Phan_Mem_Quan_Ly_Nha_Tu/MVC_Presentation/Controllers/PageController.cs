using System;
using System.Collections.Generic;
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
            return View();
        }
        [HttpPost]
        public ActionResult ThemPhamNhan(Tinh_Trang_Thong_Tin_Pham_Nhan_Objects obj)
        {
            if(ModelState.IsValid)
            {
                new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().Insert(obj);
                return RedirectToAction("ThemPhamNhan");
            }
            return View();
        }
        public ActionResult TinhTrangCaiTao()
        {
            return View();
        }

        [HttpGet]
        public ActionResult CapNhatTinhTrangSucKhoePhamNhan(string ma_so)
        {
            ma_so = Request["txtSearch_Text"];
            Tinh_Trang_Cham_Soc_Pham_Nhan_Objects obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByID(ma_so);
            if (obj == null)
            {
                obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByTop();
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
<<<<<<< HEAD
            ViewBag.username = Session["username"];
            return View();
=======

            List<Pham_Nhan_Objects> obj = new Pham_Nhan_BLL().GetElements();
            if (obj == null)
            {
                obj = new Pham_Nhan_BLL().GetElements();
            }
            return View(obj);
            
>>>>>>> f702c74531bc3b20e7d36c02014f0004f8655c55
        }
        public ActionResult DanhSachTuNhanDuocChamSocTrongNgay()
        {
            return View();
        }
        public ActionResult GoiYKhauPhanAn()
        {
            return View();
        }
        public ActionResult HoatDongCuaBoPhan()
        {
            return View();
        }
        public ActionResult TinhTrangPhamNhan()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DanhSachPhamNhanTiepNhanPhongThich(DateTime? start, DateTime? end)
        {
            var tinhtrang = Request["sltloai"];
            if (Request["txtformday"] == "" && Request["txttoday"] != "")
            {
                start = null;
                end = Convert.ToDateTime(Request["txttoday"]);
            }
            else
            {
                if(Request["txtformday"] != null && Request["txttoday"] != null)
                {
                    start = Convert.ToDateTime(Request["txtformday"]);
                    end = Convert.ToDateTime(Request["txttoday"]);
                }
            }
            bool tinhtrangtiepnhan;
            List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> lst;
            if (start == null && end == null)
            {
                lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElements();
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
                lst = new Tinh_Trang_Thong_Tin_Pham_Nhan_BLL().GetElements();
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
    }
}