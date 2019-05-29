using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MVC_ValueObjects
{
    public class Tinh_Trang_Thong_Tin_Pham_Nhan_Objects
    {
        [Required(ErrorMessage = "Hãy nhập mã phạm nhân")]
        public string ma_so { get; set; }
        [Required(ErrorMessage = "Hãy nhập họ tên phạm nhân")]
        public string ho_ten { get; set; }
        [Required(ErrorMessage = "Hãy nhập ngày sinh phạm nhân")]
        public Nullable<System.DateTime> ngay_sinh { get; set; }
        [Required(ErrorMessage = "Hãy  nhập quê quán phạm nhân")]
        public string noi_sinh { get; set; }
        [Required(ErrorMessage = "Hãy nhập hành vi phạm tội phạm nhân")]
        public string pham_toi { get; set; }
        [Required(ErrorMessage = "Hãy nhập số điện thoại của người thân")]
        public string sdt_nguoi_than { get; set; }
        public Nullable<decimal> tong_so_ngay_giam_giu { get; set; }
        public Nullable<decimal> muc_do_pham_toi { get; set; }
        public Nullable<System.DateTime> ngay_tiep_nhan { get; set; }
        public Nullable<bool> tinh_trang_tiep_nhan { get; set; }
        public string ma_nguoi_than { get; set; }
        public decimal ID { get; set; }
        public Nullable<int> loai_suc_khoe { get; set; }
        public Nullable<decimal> so_ngay_da_giam_giu { get; set; }
        public Nullable<System.DateTime> ngay_phong_thich { get; set; }
        public Nullable<int> khau_phan_an { get; set; }
        public string chi_tiet_khau_phan_an { get; set; }
        public string ma_so_pham_nhan { get; set; }
        public string thoi_gian_giam { get; set; }
    }
}
