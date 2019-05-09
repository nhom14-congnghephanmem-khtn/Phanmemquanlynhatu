using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MVC_ValueObjects
{
    public class Pham_Nhan_Objects
    {
        [Required (ErrorMessage = "Hãy nhập mã phạm nhân")]
        public string ma_so { get; set; }
        public string ho_ten { get; set; }
        public Nullable<System.DateTime> ngay_sinh { get; set; }
        public string noi_sinh { get; set; }
        public string pham_toi { get; set; }
        public string sdt_nguoi_than { get; set; }
        public Nullable<decimal> tong_so_ngay_giam_giu { get; set; }
        public Nullable<decimal> muc_do_pham_toi { get; set; }
        public Nullable<System.DateTime> ngay_tiep_nhan { get; set; }
        public Nullable<bool> tinh_trang_tiep_nhan { get; set; }
        public string ma_nguoi_than { get; set; }
    }
}
