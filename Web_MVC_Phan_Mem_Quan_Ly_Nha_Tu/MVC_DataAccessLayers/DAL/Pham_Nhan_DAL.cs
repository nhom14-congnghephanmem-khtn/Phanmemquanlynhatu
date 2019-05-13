using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class Pham_Nhan_DAL : BaseDAL<Pham_Nhan_Objects>
    {
        public override bool Insert(Pham_Nhan_Objects OT)
        {
            return _dbContext.SP_Pham_Nhan_InsertOrUpdate(OT.ma_so, OT.ho_ten, OT.ngay_sinh, OT.noi_sinh, OT.pham_toi, OT.sdt_nguoi_than, OT.tong_so_ngay_giam_giu, OT.muc_do_pham_toi, OT.ngay_tiep_nhan, false, OT.ma_nguoi_than, false) > 0;
        }
    }
}
