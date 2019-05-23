using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_ValueObjects;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Tinh_Trang_Thong_Tin_Pham_Nhan_BLL : BaseBLL<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects>
    {
        public override bool Insert(Tinh_Trang_Thong_Tin_Pham_Nhan_Objects OT)
        {
            return new Tinh_Trang_Thong_Tin_Pham_Nhan_DAL().Insert(OT);
        }

        public override List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> GetElements()
        {
            return new Tinh_Trang_Thong_Tin_Pham_Nhan_DAL().GetElements();
        }

        public List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> GetElementsByDateAndTinhTrang(bool tinhtrangtiepnhan, DateTime? start, DateTime? end)
        {
            return new Tinh_Trang_Thong_Tin_Pham_Nhan_DAL().GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
        }
    }
}
