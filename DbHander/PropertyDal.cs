using DBHander;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbHander
{
   public class PropertyDal : AbstractDal<Property>
    {
        public override int Delete(int id)
        {
            Open();
            objCommand.CommandText = "delete from property where propertyid = @id";
            objCommand.Parameters.AddWithValue("id", id);
            int result = objCommand.ExecuteNonQuery();
            Close();
            return result;
        }

        public override int Add(Property obj)
        {
            Open();
            obj.Status = true;
            obj.CreatedAt = DateTimeOffset.Now;
            obj.ModifiedAt = obj.CreatedAt;
            objCommand.CommandText = "insert into property(status,createdat,modifiedat,description,addressid,typeid,userid,prize,room) values('"
                                                    + obj.Status + "',@createddate,@modifieddate,'" + obj.Description + "','" + obj.AddressId + "','" + obj.TypeId + "','" + obj.UserId + "','" + obj.Prize + "','" + obj.Room + "');";
            objCommand.CommandText += " SELECT SCOPE_IDENTITY()";
            objCommand.Parameters.Add("@createddate", SqlDbType.DateTimeOffset).Value = obj.CreatedAt;
            objCommand.Parameters.Add("@modifieddate", SqlDbType.DateTimeOffset).Value = obj.ModifiedAt;
            int id = Convert.ToInt32(objCommand.ExecuteScalar());
            Close();
            return id;
        }

        public override DataTable GetAll()
        {
            Open();
            objCommand.CommandText = "select * from property order by createdat desc";
            SqlDataAdapter sda = new SqlDataAdapter(objCommand);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Close();
            return dt;
        }

        public override int Update(Property obj)
        {
            Open();
            objCommand.CommandText = "update property set description = '" + obj.Description + "',prize = '" + obj.Prize + "', room = '" + obj.Room + "',typeid = '" + obj.TypeId + "'where propertyid='" + obj.PropertyId +"' ";
            int result = objCommand.ExecuteNonQuery();
            Close();
            return result;
        }
    }
}