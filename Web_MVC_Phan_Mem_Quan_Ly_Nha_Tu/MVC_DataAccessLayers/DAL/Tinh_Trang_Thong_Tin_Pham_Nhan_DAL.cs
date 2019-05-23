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

        public override List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> GetElements()
        {
            var data = _dbContext.SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements();
            if (data == null)
            {
                return null;
            }
            List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> lst = new List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects>();
            foreach (var item in data)
            {
                Tinh_Trang_Thong_Tin_Pham_Nhan_Objects obj = new Tinh_Trang_Thong_Tin_Pham_Nhan_Objects();
                obj.ma_so = item.ma_so;
                obj.ho_ten = item.ho_ten;
                obj.ngay_sinh = item.ngay_sinh;
                obj.noi_sinh = item.noi_sinh;
                obj.pham_toi = item.pham_toi;
                obj.sdt_nguoi_than = item.sdt_nguoi_than;
                obj.tong_so_ngay_giam_giu = item.tong_so_ngay_giam_giu;
                obj.muc_do_pham_toi = item.muc_do_pham_toi;
                obj.ngay_tiep_nhan = item.ngay_tiep_nhan;
                obj.tinh_trang_tiep_nhan = item.tinh_trang_tiep_nhan;
                obj.ma_nguoi_than = item.ma_nguoi_than;
                obj.ID = item.ID;
                obj.loai_suc_khoe = item.loai_suc_khoe;
                obj.so_ngay_da_giam_giu = item.so_ngay_da_giam_giu;
                obj.ngay_phong_thich = item.ngay_phong_thich;
                obj.khau_phan_an = item.khau_phan_an;
                obj.chi_tiet_khau_phan_an = item.chi_tiet_khau_phan_an;
                obj.ma_so_pham_nhan = item.ma_so_pham_nhan;
                lst.Add(obj);
            }
            return lst;
        }

        public List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> GetElementsByDateAndTinhTrang(bool tinhtrangtiepnhan, DateTime? start, DateTime? end)
        {
            var data = _dbContext.SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElementsByDateAndTinhTrang(tinhtrangtiepnhan, start, end);
            if (data == null)
            {
                return null;
            }
            
            List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects> lst = new List<Tinh_Trang_Thong_Tin_Pham_Nhan_Objects>();
            foreach (var item in data)
            {
                Tinh_Trang_Thong_Tin_Pham_Nhan_Objects obj = new Tinh_Trang_Thong_Tin_Pham_Nhan_Objects();
                obj.ma_so = item.ma_so;
                obj.ho_ten = item.ho_ten;
                obj.ngay_sinh = item.ngay_sinh;
                obj.noi_sinh = item.noi_sinh;
                obj.pham_toi = item.pham_toi;
                obj.sdt_nguoi_than = item.sdt_nguoi_than;
                obj.tong_so_ngay_giam_giu = item.tong_so_ngay_giam_giu;
                obj.muc_do_pham_toi = item.muc_do_pham_toi;
                obj.ngay_tiep_nhan = item.ngay_tiep_nhan;
                obj.tinh_trang_tiep_nhan = item.tinh_trang_tiep_nhan;
                obj.ma_nguoi_than = item.ma_nguoi_than;
                obj.ID = item.ID;
                obj.loai_suc_khoe = item.loai_suc_khoe;
                obj.so_ngay_da_giam_giu = item.so_ngay_da_giam_giu;
                obj.ngay_phong_thich = item.ngay_phong_thich;
                obj.khau_phan_an = item.khau_phan_an;
                obj.chi_tiet_khau_phan_an = item.chi_tiet_khau_phan_an;
                obj.ma_so_pham_nhan = item.ma_so_pham_nhan;
                DateTime d1 = DateTime.Now;
                DateTime d2 = DateTime.ParseExact(obj.ngay_phong_thich.ToString(), "dd/MM/yyyy", null);
                int year = d2.Year - d1.Year;
                int month = (d2.Month - d1.Month);
                int day = d2.Day - d1.Day;
                if (year == 0)
                {
                    obj.thoi_gian_giam = month + " tháng " + day + " ngày";
                }
                else
                {
                    if (month == 0)
                    {
                        obj.thoi_gian_giam = year + " năm " + day + " ngày";
                    }
                    else
                    {
                        if (day == 0)
                        {
                            obj.thoi_gian_giam = year + " năm " + month + " tháng";
                        }
                        else
                        {
                            if (year == 0 && month == 0)
                            {
                                obj.thoi_gian_giam = day + " ngày";
                            }
                            else
                            {
                                if (year == 0 && day == 0)
                                {
                                    obj.thoi_gian_giam = month + " tháng";
                                }
                                else
                                {
                                    if (month == 0 && day == 0)
                                    {
                                        obj.thoi_gian_giam = year + " năm";
                                    }
                                    else
                                    {
                                        obj.thoi_gian_giam = year + " năm " + month + " tháng " + day + " ngày";
                                    }
                                }
                            }
                        }
                    }
                }
                lst.Add(obj);
            }
            return lst;
        }
    }
}
