﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.DAL;
using MVC_ValueObjects;

namespace MVC_BusinessLogicLayers.BLL
{
    public class Tinh_Trang_Cham_Soc_Pham_Nhan_BLL : BaseBLL<Tinh_Trang_Cham_Soc_Pham_Nhan_Objects>
    {
        public override Tinh_Trang_Cham_Soc_Pham_Nhan_Objects GetElementByID(string id)
        {
            return new Tinh_Trang_Cham_Soc_Pham_Nhan_DAL().GetElementByID(id);
        }

        public List<Tinh_Trang_Cham_Soc_Pham_Nhan_Objects> GetElmentsByDate(DateTime? date)
        {
            return new Tinh_Trang_Cham_Soc_Pham_Nhan_DAL().GetElmentsByDate(date);
        }

        public override bool Update(Tinh_Trang_Cham_Soc_Pham_Nhan_Objects OT)
        {
            return new Tinh_Trang_Cham_Soc_Pham_Nhan_DAL().Update(OT);
        }

        public Tinh_Trang_Cham_Soc_Pham_Nhan_Objects GetElementByTop()
        {
            return new Tinh_Trang_Cham_Soc_Pham_Nhan_DAL().GetElementByTop();
        }
    }
}
