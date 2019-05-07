using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_Presentation.Controllers
{
    public class PageController : Controller
    {
        // GET: Page
        public ActionResult ThemPhamNhan()
        {
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
    }
}