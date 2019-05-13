using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_ValueObjects;
using MVC_DataAccessLayers.DAL;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Nguoi_Dung_BLL : BaseBLL<Nguoi_Dung_Objects> 
    {
        public Nguoi_Dung_Objects CheckLogin(string username, string password)
        {
            return new Nguoi_Dung_DAL().CheckLogin(username, password);
        }

        public override List<Nguoi_Dung_Objects> GetElements()
        {
            return new Nguoi_Dung_DAL().GetElements();
        }
    }
}
