using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVC_Presentation
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "DangNhap", action = "DangNhap", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Trang chủ",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Danh sách phạm nhân",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Page", action = "DanhSachPhamNhan", id = UrlParameter.Optional }
            );
        }
    }
}
