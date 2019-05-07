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
        public Nguoi_Dung_Objects CheckLogin(string username, string password)
        {
            foreach (var item in _dbContext.SP_Nguoi_Dung_CheckLogin(username,password,"1"))
            {
                Nguoi_Dung_Objects Ouser = new Nguoi_Dung_Objects();
                Ouser.user_name = item.user_name;
                Ouser.password = item.password;
                return Ouser;
            }
            return null;
        }
    }
}
