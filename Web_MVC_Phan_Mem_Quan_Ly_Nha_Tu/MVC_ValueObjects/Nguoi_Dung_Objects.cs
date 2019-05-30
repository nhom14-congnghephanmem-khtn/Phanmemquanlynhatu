using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace MVC_ValueObjects
{
    public class Nguoi_Dung_Objects
    {
        public string ma_so { get; set; }
        public string hoten { get; set; }
        [Required(ErrorMessage = "Bạn hãy nhập tên đăng nhập")]
        public string user_name { get; set; }
        [Required(ErrorMessage = "Bạn hãy nhập mật khẩu")]
        public string password { get; set; }
        public string ma_phong_ban { get; set; }
        public Nullable<int> khau_phan_an { get; set; }
        public string chi_tiet_khau_phan_an { get; set; }
        public string thong_bao { get; set; }
    }
}
