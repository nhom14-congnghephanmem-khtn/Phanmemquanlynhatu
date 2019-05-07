using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MVC_DataAccessLayers.EntityFramework;
using MVC_ValueObjects;

namespace MVC_DataAccessLayers.DAL
{
    public class BaseDAL <T>
    {
        protected DB_PrisonManagementEntities _dbContext;
        public BaseDAL()
        {
            _dbContext = new DB_PrisonManagementEntities();
        }
        public virtual List<T> GetElements() { return null; }
        public virtual T GetElementByID(string id) { return default(T); }
        public virtual Boolean Insert(T OT) { return true; }
        public virtual Boolean Update(T OT) { return true; }
        public virtual Boolean Delete(string id) { return true; }
    }
}
