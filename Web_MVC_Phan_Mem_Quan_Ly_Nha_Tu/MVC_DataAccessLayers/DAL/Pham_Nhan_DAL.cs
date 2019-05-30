using System;
using System.Collections.Generic;
using System.Data.Entity.Core.EntityClient;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_DataAccessLayers.EntityFramework;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class Pham_Nhan_DAL : BaseDAL<Pham_Nhan_Objects>
    {
        public override bool Insert(Pham_Nhan_Objects OT)
        {
            return _dbContext.SP_Pham_Nhan_InsertOrUpdate(OT.ma_so, OT.ho_ten, OT.ngay_sinh, OT.noi_sinh, OT.pham_toi, OT.sdt_nguoi_than, OT.tong_so_ngay_giam_giu, OT.muc_do_pham_toi, OT.ngay_tiep_nhan, false, OT.ma_nguoi_than, false) > 0;
        }

        public override List<Pham_Nhan_Objects> GetElements()
        {
            var data = _dbContext.SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements();
            if (data == null)
            {
                return null;
            }
            List<Pham_Nhan_Objects> lst = new List<Pham_Nhan_Objects>();
            foreach (var item in data)
            {
                Pham_Nhan_Objects obj = new Pham_Nhan_Objects();
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
                obj.loai_suc_khoe = item.loai_suc_khoe;
                obj.ngay_phong_thich = item.ngay_phong_thich;

                DateTime d1 = DateTime.Now;
                DateTime d2 = Convert.ToDateTime(obj.ngay_phong_thich);
                int year = d2.Year - d1.Year;
                int month;
                int day;
                if (d1.Month > d2.Month)
                {
                    month = d1.Month - d2.Month;
                }
                else
                {
                    if (d1.Month < d2.Month)
                    {
                        month = d2.Month - d1.Month;
                    }
                    else
                    {
                        month = d1.Month - d2.Month;
                    }
                }
                if (d1.Day > d2.Day)
                {
                    day = d1.Day - d2.Day;
                }
                else
                {
                    if (d1.Day < d2.Day)
                    {
                        day = d2.Day - d1.Day;
                    }
                    else
                    {
                        day = d1.Day - d2.Day;
                    }
                }
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

        public SP_Pham_Nhan_Get_Tinh_Trang_Result GetTinhTrangPhamNhan(String maPhamNhan)
        {
            var data = _dbContext.SP_Pham_Nhan_Get_Tinh_Trang(maPhamNhan);
            foreach (var item in data)
            {
                return item;
            }
            return null;
        }

        public SP_Pham_Nhan_Get_TKB_Tham_Benh_Result GetTkbThamBenh(String maPhamNhan)
        {
            var data = _dbContext.SP_Pham_Nhan_Get_TKB_Tham_Benh(maPhamNhan);
           
            foreach (var item in data)
            {
                return item;
            }
            
            return null;
        }

        public List<SP_Pham_Nhan_Get_Elements_With_Condition_Result> GetDanhSachPhamNhan(int mucDoPhamToi, DateTime ngayPhongThichFrom, DateTime ngayPhongThichTo)
        {
            var data = _dbContext.SP_Pham_Nhan_Get_Elements_With_Condition(mucDoPhamToi, ngayPhongThichFrom, ngayPhongThichTo);
            return data.ToList();
        }
    }
}
