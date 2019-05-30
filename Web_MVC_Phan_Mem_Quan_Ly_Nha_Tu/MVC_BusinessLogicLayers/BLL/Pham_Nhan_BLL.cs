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

        public Tinh_Trang_Pham_Nhan_Objects GetTinhTrangPhamNhan(String maThanNhan)
        {
            var phamNhan = new Pham_Nhan_DAL().GetNguoiThan(maThanNhan);
            SP_Pham_Nhan_Get_Tinh_Trang_Result tinhTrangPhamNhanObj = new Pham_Nhan_DAL().GetTinhTrangPhamNhan(phamNhan.ma_so);
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

                var tkbThamBenh = new Pham_Nhan_DAL().GetTkbThamBenh(phamNhan.ma_so);
                if (tkbThamBenh == null)
                {
                    return ret;
                }
                ret.NgayThamBenhKeTiep = tkbThamBenh.ngay_gio_from.Value.ToString("dd/MM/yyyy");
            }
            return ret;
        }

        public List<Pham_Nhan_Search_Result_Objects> GetDanhSachPhamNhan(int mucDoPhamToi, DateTime ngayPhongThichFrom, DateTime ngayPhongThichTo)
        {
            List<Pham_Nhan_Search_Result_Objects> ret = new List<Pham_Nhan_Search_Result_Objects>();
            var dsPhamNhan = new Pham_Nhan_DAL().GetDanhSachPhamNhan(mucDoPhamToi, ngayPhongThichFrom, ngayPhongThichTo);
            if (dsPhamNhan != null && dsPhamNhan.Count > 0)
            {
                foreach (var item in dsPhamNhan)
                {
                    Pham_Nhan_Search_Result_Objects pn = new Pham_Nhan_Search_Result_Objects();
                    pn.ma_so = item.ma_so;
                    pn.ho_ten = item.ho_ten;
                    pn.noi_sinh = item.noi_sinh;
                    pn.pham_toi = item.pham_toi;
                    switch (item.muc_do_pham_toi)
                    {
                        case 1:
                            pn.muc_do_pham_toi = "Mức 1";
                            break;
                        case 2:
                            pn.muc_do_pham_toi = "Mức 2";
                            break;
                        case 3:
                            pn.muc_do_pham_toi = "Mức 3";
                            break;
                    }
                    pn.thoi_gian_giam = FormatUtils.strNgay(item.tong_so_ngay_giam_giu.Value);
                    switch (item.loai_suc_khoe)
                    {
                        case 1:
                            pn.loai_suc_khoe = "Loại 1";
                            break;
                        case 2:
                            pn.loai_suc_khoe = "Loại 2";
                            break;
                        case 3:
                            pn.loai_suc_khoe = "Loại 3";
                            break;
                    }
                    ret.Add(pn);
                }
            }
            return ret;
        }
    }
}
