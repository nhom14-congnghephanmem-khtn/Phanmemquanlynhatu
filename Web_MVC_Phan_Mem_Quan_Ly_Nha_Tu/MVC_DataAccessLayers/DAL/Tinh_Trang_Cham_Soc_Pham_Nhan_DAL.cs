using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class Tinh_Trang_Cham_Soc_Pham_Nhan_DAL : BaseDAL<Tinh_Trang_Cham_Soc_Pham_Nhan_Objects>
    {
        public override Tinh_Trang_Cham_Soc_Pham_Nhan_Objects GetElementByID(string id)
        {
            var data = _dbContext.SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID(id);
            foreach (var item in data)
            {
                Tinh_Trang_Cham_Soc_Pham_Nhan_Objects obj = new Tinh_Trang_Cham_Soc_Pham_Nhan_Objects();
                obj.ma_so = item.ma_so;
                obj.ho_ten = item.ho_ten;
                obj.ngay_sinh = DateTime.ParseExact(item.ngay_sinh, "dd/MM/yyyy", null);
                obj.noi_sinh = item.noi_sinh;
                return obj;
            }
            return null;
        }

        public override bool Update(Tinh_Trang_Cham_Soc_Pham_Nhan_Objects OT)
        {
            return _dbContext.SP_Tinh_Trang_Cham_Soc_Pham_Nhan_InsertOrUpdate(OT.ma_so, OT.loai_suc_khoe, OT.khau_phan_an, OT.ngay_gio, true, OT.ghi_chu) > 0;
        }
    }
}
