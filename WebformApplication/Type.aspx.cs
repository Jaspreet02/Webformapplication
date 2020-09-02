using DbHander;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebformApplication
{
    public partial class Type : System.Web.UI.Page
    {
        IList<DBHander.State> states = new List<DBHander.State>();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!Page.IsPostBack)
            {
            }
        }

        protected void Update_Text(object sender, EventArgs e)
        {
                txtDFS.Text = txtStocked.Text;
                SCPanel.Update();
        }
    }
}