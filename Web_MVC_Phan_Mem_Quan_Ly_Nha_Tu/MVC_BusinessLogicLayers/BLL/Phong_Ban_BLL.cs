using MVC_DataAccessLayers.DAL;
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
    }
}
