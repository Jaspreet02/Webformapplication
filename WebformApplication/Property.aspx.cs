using DbHander;
using DBHander;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebformApplication
{
    public partial class Property : System.Web.UI.Page
    {
        private readonly PropertyDal _propertyDal = null;
        private readonly TypeDal _typeDal = null;
        public Property()
        {
            _propertyDal = new PropertyDal();
            _typeDal = new TypeDal();
        }
        protected void Page_Load(object sender, EventArgs e)
        {           
            if (!Page.IsPostBack)
            {
                RefreshData();
            }
        }

        public void RefreshData()
        {
            grvProperty.DataSource = _propertyDal.GetAll();
            grvProperty.DataBind();
        }

        protected void grvProperty_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DBHander.Property property = new DBHander.Property();
            property.Description = (grvProperty.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text;
            property.Prize = Convert.ToDecimal((grvProperty.Rows[e.RowIndex].FindControl("TextBox3") as TextBox).Text);
            property.Room = Convert.ToInt32((grvProperty.Rows[e.RowIndex].FindControl("TextBox4") as TextBox).Text);
            property.TypeId = Convert.ToInt32((grvProperty.Rows[e.RowIndex].FindControl("DropDownList2") as DropDownList).SelectedValue);
            property.PropertyId = Convert.ToInt32(grvProperty.DataKeys[e.RowIndex].Value);
            _propertyDal.Update(property);
            grvProperty.EditIndex = -1;
            RefreshData();
        }

        protected void grvProperty_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvProperty.EditIndex = e.NewEditIndex;
            RefreshData();
        }

        protected void grvProperty_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grvProperty.DataKeys[e.RowIndex].Value);
            _propertyDal.Delete(id);
            RefreshData();
        }

        protected void grvProperty_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvProperty.EditIndex = -1;
            RefreshData();
        }

        protected void grvProperty_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList DropDownType = (e.Row.FindControl("ddlType") as DropDownList);
                if (DropDownType == null)
                {
                    DropDownType = (e.Row.FindControl("DropDownList2") as DropDownList);
                }
                DropDownType.DataSource = _typeDal.GetAll();
                DropDownType.DataTextField = "Name";
                DropDownType.DataValueField = "TypeId";
                DropDownType.DataBind();
                DropDownType.Items.Insert(0, new ListItem("--Select Qualification--", "0"));
                    DataRowView dr = (DataRowView)e.Row.DataItem;
                    DropDownType.Items.FindByValue(dr["TypeId"].ToString()).Selected = true;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                DropDownList DropDownType = (e.Row.FindControl("DropDownList1") as DropDownList);
                DropDownType.DataSource = _typeDal.GetAll();
                DropDownType.DataTextField = "Name";
                DropDownType.DataValueField = "TypeId";
                DropDownType.DataBind();
                DropDownType.Items.Insert(0, new ListItem("--Select Qualification--", "0"));
            }

        }

        protected void grvProperty_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvProperty.PageIndex = e.NewPageIndex;
            RefreshData();
        }

        protected void grvProperty_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add New"))
            {
                DBHander.Property property = new DBHander.Property();
                property.UserId = (grvProperty.FooterRow.FindControl("addname") as TextBox).Text;
                property.Description = (grvProperty.FooterRow.FindControl("Description") as TextBox).Text;
                property.Prize = Convert.ToDecimal((grvProperty.FooterRow.FindControl("Prize") as TextBox).Text);
                property.Room = Convert.ToInt32((grvProperty.FooterRow.FindControl("Room") as TextBox).Text);
                property.TypeId = Convert.ToInt32((grvProperty.FooterRow.FindControl("DropDownList1") as DropDownList).SelectedValue);
                property.AddressId = 3;
                _propertyDal.Add(property);
                 RefreshData();
            }
        }

        protected void grvProperty_Sorting(object sender, GridViewSortEventArgs e)
        {
            MessageBox.Show(e.SortExpression);
        }
    }
}