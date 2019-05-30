using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_BusinessLogicLayers.Common;
using MVC_DataAccessLayers.DAL;
using MVC_DataAccessLayers.EntityFramework;
using MVC_ValueObjects;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Pham_Nhan_BLL : BaseBLL<Pham_Nhan_Objects>
    {
        public override bool Insert(Pham_Nhan_Objects OT)
        {
            return new Pham_Nhan_DAL().Insert(OT);
        }

        public override List<Pham_Nhan_Objects> GetElements()
        {
            return new Pham_Nhan_DAL().GetElements();
        }

        public Tinh_Trang_Pham_Nhan_Objects GetTinhTrangPhamNhan(String maPhamNhan)
        {

            SP_Pham_Nhan_Get_Tinh_Trang_Result tinhTrangPhamNhanObj = new Pham_Nhan_DAL().GetTinhTrangPhamNhan(maPhamNhan);
            Tinh_Trang_Pham_Nhan_Objects ret = new Tinh_Trang_Pham_Nhan_Objects();
            if (ret != null)
            {
                ret.MaSo = tinhTrangPhamNhanObj.ma_so;
                ret.HoTen = tinhTrangPhamNhanObj.ho_ten;
                ret.NgaySinh = tinhTrangPhamNhanObj.ngay_sinh.Value.ToString("dd/MM/yyyy");
                ret.NoiSinh = tinhTrangPhamNhanObj.noi_sinh;
                ret.ThoiGianGiamGiu = FormatUtils.strNgay(tinhTrangPhamNhanObj.so_ngay_da_giam_giu.Value)
                    + "/" + FormatUtils.strNgay(tinhTrangPhamNhanObj.tong_so_ngay_giam_giu.Value);
                switch (tinhTrangPhamNhanObj.loai_suc_khoe)
                {
                    case 1:
                        ret.LoaiSucKhoe = "Loại 1";
                        break;
                    case 2:
                        ret.LoaiSucKhoe = "Loại 2";
                        break;
                    case 3:
                        ret.LoaiSucKhoe = "Loại 3";
                        break;
                }

                var tkbThamBenh = new Pham_Nhan_DAL().GetTkbThamBenh(maPhamNhan);
                if (tkbThamBenh == null)
                {
                    return ret;
                }
                ret.NgayThamBenhKeTiep = tkbThamBenh.ngay_gio_from.Value.ToString("dd/MM/yyyy");
            }
            return ret;
        }
    }
}
