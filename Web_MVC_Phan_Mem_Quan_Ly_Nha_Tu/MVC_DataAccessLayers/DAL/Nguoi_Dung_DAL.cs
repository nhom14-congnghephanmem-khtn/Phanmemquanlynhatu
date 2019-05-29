using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class Nguoi_Dung_DAL : BaseDAL<Nguoi_Dung_Objects>
    {
        public Nguoi_Dung_Objects CheckLogin(string username, string password, string roleID)
        {
            var data = _dbContext.SP_Nguoi_Dung_CheckLoginByMaPhongBan(username, password, roleID);
            foreach (var item in data)
            {
                Nguoi_Dung_Objects Ouser = new Nguoi_Dung_Objects();
                Ouser.user_name = item.user_name;
                Ouser.password = item.password;
                return Ouser;
            }
            return null;
        }

        public Nguoi_Dung_Objects GetUserByMaPhongBan(string username)
        {
            var data = _dbContext.SP_Nguoi_Dung_GetUserByMa_Phong_Ban(username);
            foreach (var item in data)
            {
                Nguoi_Dung_Objects ouser = new Nguoi_Dung_Objects();
                ouser.ma_phong_ban = item.ma_phong_ban;
                return ouser;
            }
            return null;
        }

        public override List<Nguoi_Dung_Objects> GetElements()
        {
            var data = _dbContext.SP_Nguoi_Dung_GetElements();
            if (data == null)
            {
                return null;
            }
            List<Nguoi_Dung_Objects> UserList = new List<Nguoi_Dung_Objects>();
            foreach (var item in data)
            {
                Nguoi_Dung_Objects user = new Nguoi_Dung_Objects();
                user.ma_so = item.ma_so;
                user.hoten = item.hoten;
                user.user_name = item.user_name;
                user.password = item.password;
                user.ma_phong_ban = item.ma_phong_ban;
                user.khau_phan_an = item.khau_phan_an;
                user.chi_tiet_khau_phan_an = item.chi_tiet_khau_phan_an;
                UserList.Add(user);
            }
            return UserList;
        }
    }
}
