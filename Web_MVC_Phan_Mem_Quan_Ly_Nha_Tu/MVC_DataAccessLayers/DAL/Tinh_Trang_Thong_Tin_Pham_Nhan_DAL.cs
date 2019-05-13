using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class Tinh_Trang_Thong_Tin_Pham_Nhan_DAL : BaseDAL<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects>
    {
        public override bool Insert(Tinh_Trang_Thong_Tin_Pham_Nhan_Objects OT)
        {
            return _dbContext.SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate(OT.ma_so, OT.ho_ten, OT.ngay_sinh, OT.noi_sinh, OT.pham_toi, OT.sdt_nguoi_than, OT.tong_so_ngay_giam_giu, OT.muc_do_pham_toi, OT.ngay_tiep_nhan, false, OT.ma_nguoi_than, OT.loai_suc_khoe, OT.so_ngay_da_giam_giu, OT.ngay_phong_thich, OT.khau_phan_an, OT.chi_tiet_khau_phan_an, false) > 0;
        }
    }
}
