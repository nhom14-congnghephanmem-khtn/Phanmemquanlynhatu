using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MVC_ValueObjects
{
    public class Tinh_Trang_Pham_Nhan_Objects
    {
        public decimal ID { get; set; }
        public Nullable<int> loai_suc_khoe { get; set; }
        public Nullable<decimal> so_ngay_da_giam_giu { get; set; }
        public Nullable<System.DateTime> ngay_phong_thich { get; set; }
        public Nullable<int> khau_phan_an { get; set; }
        public string chi_tiet_khau_phan_an { get; set; }
        public string ma_so_pham_nhan { get; set; }
    }
}
