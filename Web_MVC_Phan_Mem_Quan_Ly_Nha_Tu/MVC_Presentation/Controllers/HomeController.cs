using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_ValueObjects;
using MVC_BusinessLogicLayers.BLL;

namespace MVC_Presentation.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            List<Nguoi_Dung_Objects> lst = new Nguoi_Dung_BLL().GetElements();
            return View(lst);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        
    }
}