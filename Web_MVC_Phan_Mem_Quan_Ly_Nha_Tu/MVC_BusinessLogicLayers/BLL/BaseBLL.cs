using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_ValueObjects;

namespace MVC_BusinessLogicLayers.BLL
{
    public class BaseBLL<T>
    {
        public virtual List<T> GetElements() { return null; }
        public virtual T GetElementByID(string id) { return default(T); }
        public virtual Boolean Insert(T OT) { return true; }
        public virtual Boolean Update(T OT) { return true; }
        public virtual Boolean Delete(string id) { return true; }
    }
}
