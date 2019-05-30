using MVC_DataAccessLayers.DAL;
using MVC_DataAccessLayers.EntityFramework;
using MVC_ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Phong_Ban_BLL : BaseBLL<Phong_Ban_Objects>
    {
        public Phong_Ban_DAL PhongBanDal { get; set; }

        public Phong_Ban_BLL()
        {
            PhongBanDal = new Phong_Ban_DAL();
        }

        public List<Phong_Ban_Objects> GetDanhSachPhongBan()
        {
            return PhongBanDal.GetDanhSachPhongBan();
        }

        public List<Hoat_Dong_Phong_Ban> GetDanhSachHoatDong(String maPhongBan)
        {
            List<Hoat_Dong_Phong_Ban> ret = new List<Hoat_Dong_Phong_Ban>();
            List<SP_Hoat_Dong_Phong_Ban_Result> hoatDongObjs = PhongBanDal.GetDanhSachHoatDongCuaPhongBan(maPhongBan);
            foreach (var item in hoatDongObjs)
            {
                Hoat_Dong_Phong_Ban data = new Hoat_Dong_Phong_Ban();
                data.TenHoatDong = item.ten_hoat_dong;
                data.NoiDung = item.noi_dung;
                data.Ngay = item.ngay_dien_ra.Value.ToString("dd/MM/yyyy");
                ret.Add(data);
            }
            return ret;
        }
    }
}
