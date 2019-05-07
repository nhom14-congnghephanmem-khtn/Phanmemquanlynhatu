using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_ValueObjects;
using MVC_BusinessLogicLayers.BLL;
using System.Net;
using System.Web.Security;
using System.IO;

namespace MVC_Presentation.Controllers
{
    public class DangNhapController : Controller
    {
        public ActionResult DangNhap()
        {
            return View();
        }
        //GET: DangNhap
        [HttpPost]
        public ActionResult DangNhap(Nguoi_Dung_Objects ouser)
        {
            if(ModelState.IsValid)
            {
                var data = new Nguoi_Dung_BLL().CheckLogin(ouser.user_name, ouser.password);
                if (data != null)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            return RedirectToAction("DangNhap", "DangNhap");
        }
    }
}