using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace projectsmember
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminstatus"] != null &&
                Session["adminstatus"].ToString() == "login_admin")
            {
                //successful login1!
                DataSet1TableAdapters.AdminTableAdapter dtaName = new DataSet1TableAdapters.AdminTableAdapter();
               // string adminName = dtaName.ReturnAdminName(Session["Username"].ToString());
                string adminName = (string)dtaName.ReturnAdminName(Session["Username"].ToString());

                lblName.Text = adminName;
                
            }
            else
            {
                Response.Redirect("login_admin.aspx");
            }
        }
    }
}