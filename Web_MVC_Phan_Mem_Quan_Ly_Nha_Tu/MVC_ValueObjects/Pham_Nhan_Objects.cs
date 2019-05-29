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
        [Required (ErrorMessage = "Hãy nhập họ tên")]
        public string ho_ten { get; set; }
        [Required (ErrorMessage = "Hãy nhập ngày ngày sinh phạm nhân")]
        public Nullable<System.DateTime> ngay_sinh { get; set; }
        [Required (ErrorMessage = "Hãy nhập nơi sinh")]
        public string noi_sinh { get; set; }
        [Required(ErrorMessage = "Hãy nhập hành vi phạm tội")]
        public string pham_toi { get; set; }
        [Required(ErrorMessage = "Hãy nhập số điện thoại người thân")]
        public string sdt_nguoi_than { get; set; }
        [Required(ErrorMessage = "Hãy nhập tổng số ngày giam giữ")]
        public Nullable<decimal> tong_so_ngay_giam_giu { get; set; }
        [Required(ErrorMessage = "Hãy nhập mức độ phạm tội")]
        public Nullable<decimal> muc_do_pham_toi { get; set; }
        [Required(ErrorMessage = "Hãy nhập ngày tiếp nhận phạm nhân")]
        public Nullable<System.DateTime> ngay_tiep_nhan { get; set; }
        [Required(ErrorMessage = "Hãy nhập tình trạng tiếp nhận")]
        public Nullable<bool> tinh_trang_tiep_nhan { get; set; }
        [Required(ErrorMessage = "Hãy nhập mã người thân")]
        public string ma_nguoi_than { get; set; }
        public Nullable<int> loai_suc_khoe { get; set; }
        public string thoi_gian_giam { get; set; }
        public Nullable<System.DateTime> ngay_phong_thich { get; set; }
    }
}
