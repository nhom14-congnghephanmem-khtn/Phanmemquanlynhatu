using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_ValueObjects;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Pham_Nhan_BLL : BaseBLL<Pham_Nhan_Objects>
    {
        public override bool Insert(Pham_Nhan_Objects OT)
        {
            return new Pham_Nhan_DAL().Insert(OT);
        }

        public override List<Pham_Nhan_Objects> GetElements()
        {
            return new Pham_Nhan_DAL().GetElements();
        }
    }
}
