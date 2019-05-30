﻿using MVC_ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVC_DataAccessLayers.DAL
{
    public class Phong_Ban_DAL : BaseDAL<Phong_Ban_Objects>
    {
        public List<Phong_Ban_Objects> GetDanhSachPhongBan()
        {
            List<Phong_Ban_Objects> ret = new List<Phong_Ban_Objects>();
            var data = _dbContext.SP_Phong_Ban_GetElements();
            foreach (var item in data)
            {
                Phong_Ban_Objects phongBan = new Phong_Ban_Objects();
                phongBan.ma_phong_ban = item.ma_phong_ban;
                phongBan.ten_phong_ban = item.ten_phong_ban;
                ret.Add(phongBan);
            }
            return ret;
        }
    }
}