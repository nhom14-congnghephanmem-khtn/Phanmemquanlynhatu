﻿using System;
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
        public ActionResult ThemPhamNhan(Pham_Nhan_Objects obj)
        {
            if(ModelState.IsValid)
            {
                new Pham_Nhan_BLL().Insert(obj);
                return RedirectToAction("ThemPhamNhan");
            }
            return View();
        }
        public ActionResult TinhTrangCaiTao()
        {
            return View();
        }
        public ActionResult CapNhatTinhTrangSucKhoePhamNhan()
        {
            return View();
        }
        public ActionResult DanhSachPhamNhan()
        {
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
        public ActionResult DanhSachPhamNhanTiepNhanPhongThich()
        {
            return View();
        }
    }
}