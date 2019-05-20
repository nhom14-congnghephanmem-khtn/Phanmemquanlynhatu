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
        public static string SESSION_ACCOUNT = "SESSION_ACCOUNT";
        //GET: DangNhap
        [HttpPost]
        public ActionResult DangNhap(Nguoi_Dung_Objects ouser)
        {
            if(ModelState.IsValid)
            {
                var user = new Nguoi_Dung_BLL().GetUserByMaPhongBan(ouser.user_name);
                var data = new Nguoi_Dung_BLL().CheckLogin(ouser.user_name, ouser.password, user.ma_phong_ban);
                if (data != null)
                {
                    Session["ma_phong_ban"] = user.ma_phong_ban;
                    return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban});
                }
            }
            return RedirectToAction("DangNhap", "DangNhap");
        }
    }
}