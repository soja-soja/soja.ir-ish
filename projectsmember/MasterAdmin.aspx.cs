using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class MasterAdmin : Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminstatus"] != null &&
               Session["adminstatus"].ToString() == "login_admin")
            {
                //successful login
                DataSet1TableAdapters.AdminTableAdapter dtaAdminName = new DataSet1TableAdapters.AdminTableAdapter();
                string adminName = dtaAdminName.ReturnAdminName(Session["Name"].ToString()).ToString();
                //dtaAdminName.ReturnAdminName(Session["Username"].ToString());

                lblName.Text = adminName;

            }
            else
            {
                Response.Redirect("login_admin.aspx");
            }
        }
    }
}