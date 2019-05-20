using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_BusinessLogicLayers.BLL;
using MVC_ValueObjects;

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
                obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_BLL().GetElementByID("PC100");
                ModelState.AddModelError("Search", "Không tìm thấy");
            }
            return View(obj);
        }
        public ActionResult DanhSachPhamNhan()
        {
            ViewBag.ma_phong_ban = Session["ma_phong_ban"];
            return View();
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
        private static long Fix(double Number)
        {
            if (Number >= 0)
            {
                return (long)Math.Floor(Number);
            }
            return (long)Math.Ceiling(Number);
        }
        public ActionResult DanhSachPhamNhanTiepNhanPhongThich()
        {
            DateTime d1 = DateTime.ParseExact("01/01/2014", "dd/MM/yyyy", null);
            DateTime d2 = DateTime.ParseExact("06/05/2016", "dd/MM/yyyy", null);
            int year = d2.Year - d1.Year;
            int month = (d2.Month - d1.Month);
            int day = d2.Day - d1.Day;
            if (year == 0)
            {
                ViewBag.date = month + " tháng " + day + " ngày";
            }
            else
            {
                if (month == 0)
                {
                    ViewBag.date = year + " năm " + day + " ngày";
                }
                else
                {
                    if (day == 0)
                    {
                        ViewBag.date = year + " năm " + month + " tháng";
                    }
                    else
                    {
                        if (year == 0 && month == 0)
                        {
                            ViewBag.date = day + " ngày";
                        }
                        else
                        {
                            if (year == 0 && day == 0)
                            {
                                ViewBag.date = month + " tháng";
                            }
                            else
                            {
                                if (month == 0 && day == 0)
                                {
                                    ViewBag.date = year + " năm";
                                }
                                else
                                {
                                    ViewBag.date = year + " năm " + month + " tháng " + day + " ngày";
                                }
                            }
                        }
                    }
                }  
            }
            return View();
        }
    }
}