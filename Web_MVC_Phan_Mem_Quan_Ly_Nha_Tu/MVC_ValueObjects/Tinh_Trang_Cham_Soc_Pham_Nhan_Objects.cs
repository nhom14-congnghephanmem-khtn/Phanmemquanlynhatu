﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MVC_ValueObjects
{
    public class Tinh_Trang_Cham_Soc_Pham_Nhan_Objects
    {
        public string ma_so { get; set; }
        public string ho_ten { get; set; }
        [Editable(false)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> ngay_sinh { get; set; }
        public string noi_sinh { get; set; }
        public string pham_toi { get; set; }
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
        public int ID1 { get; set; }
        public Nullable<System.DateTime> ngay_gio { get; set; }
        public Nullable<bool> tinh_trang { get; set; }
        public string ghi_chu { get; set; }
        public string ma_so_pham_nhan1 { get; set; }
    }
}
