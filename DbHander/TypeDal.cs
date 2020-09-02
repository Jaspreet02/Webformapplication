﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbHander
{
    public class TypeDal : AbstractDal<Type>
    {
        public override int Delete(int id)
        {
            throw new NotImplementedException();
        }

        public override int Add(Type obj)
        {
            throw new NotImplementedException();
        }

        public override DataTable GetAll()
        {
            Open();
            objCommand.CommandText = "select * from Type";
            SqlDataAdapter sda = new SqlDataAdapter(objCommand);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Close();
            return dt;
        }

        public override int Update(Type obj)
        {
            throw new NotImplementedException();
        }
    }
}
