using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_BusinessLogicLayers.Common
{
    public class FormatUtils
    {
        public static String strNgay(decimal days)
        {
            int year = (int)(days / 365);
            days = days - year * 365;
            int month = (int)days / 30;
            days = days - month * 30;
            int day = (int)days;

            return year + " Năm " + month + " Tháng " + day + " Ngày ";
        }
    }
}