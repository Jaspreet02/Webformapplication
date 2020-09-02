using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace DbHander
{
    public abstract class AbstractDal<T> where T : class
    {
        protected SqlConnection objConnection = null;
        protected SqlCommand objCommand = null;
        protected  void Open() {
            objConnection = new SqlConnection(@"Data Source=LAPTOP-UHKRP4M4;Initial Catalog=RealEstate;Integrated Security=True");
            objConnection.Open();
            objCommand = new SqlCommand();
            objCommand.Connection = objConnection;
        }
        public abstract int Add(T obj);
        public abstract DataTable GetAll();
        public abstract int Update(T obj);
        public abstract int Delete(int id);
        protected void Close() { objConnection.Close(); }
    }
}
