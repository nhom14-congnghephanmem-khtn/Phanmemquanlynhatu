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
        public String MaSo { get; set; }
        public String HoTen { get; set; }
        public String NgaySinh { get; set; }
        public String NoiSinh { get; set; }
        public String ThoiGianGiamGiu { get; set; }
        public String LoaiSucKhoe { get; set; }
        public String NgayThamBenhKeTiep { get; set; }
    }
}
