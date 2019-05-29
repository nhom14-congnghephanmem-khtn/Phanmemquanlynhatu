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
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        //GET: DangNhap
        [HttpPost]
        public ActionResult DangNhap(Nguoi_Dung_Objects ouser)
        {
            if (ModelState.IsValid)
            {
                var username = new Nguoi_Dung_BLL().GetElmentByUsername(ouser.user_name);
                if (username == null)
                {
                    ModelState.AddModelError("user_name", "Tên đăng nhập không đúng");
                }
                var password = new Nguoi_Dung_BLL().GetElmentByPassword(ouser.password);
                if (password == null)
                {
                    ModelState.AddModelError("password", "Mật khẩu không đúng");
                }
                if (username != null && password != null)
                {
                    var phongban = new Nguoi_Dung_BLL().GetUserByMaPhongBan(ouser.user_name);
                    var data = new Nguoi_Dung_BLL().CheckLogin(ouser.user_name, ouser.password, phongban.ma_phong_ban);
                    if (data != null)
                    {
                        Session["ma_phong_ban"] = phongban.ma_phong_ban;
                        Session["username"] = ouser.user_name;
                        if(phongban.ma_phong_ban == "1")
                        {
                            return RedirectToAction("DanhSachPhamNhan", "Page");
                        }
                        else
                        {
                            if (phongban.ma_phong_ban == "2")
                            {
                                return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                            }
                            else
                            {
                                if (phongban.ma_phong_ban == "3")
                                {
                                    return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                }
                                else
                                {
                                    if (phongban.ma_phong_ban == "4")
                                    {
                                        return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                    }
                                    else
                                    {
                                        if (phongban.ma_phong_ban == "5")
                                        {
                                            return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                        }
                                        else
                                        {
                                            if (phongban.ma_phong_ban == "6")
                                            {
                                                return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                            }
                                            else
                                            {
                                                if (phongban.ma_phong_ban == "7")
                                                {
                                                    return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                                }
                                                else
                                                {
                                                    if (phongban.ma_phong_ban == "8")
                                                    {
                                                        return RedirectToAction("DanhSachPhamNhan", "Page", new { @id = ViewBag.ma_phong_ban });
                                                    }
                                                }
                                            }
                                        }
                                    }
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