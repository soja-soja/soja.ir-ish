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
            
            DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new DataSet1TableAdapters.AdminTableAdapter();
            string AdminRdToken = dstAdminToken.returnRndAdminTokenQuery(Session["Name"].ToString());
            if (Session["adminstatus"] != null &&
                Session["adminstatus"].ToString() == AdminRdToken.Trim())
            {
                //successful login1!
                DataSet1TableAdapters.AdminTableAdapter dtaAdminName = new DataSet1TableAdapters.AdminTableAdapter();
                string adminName = dtaAdminName.ReturnAdminName(Session["Name"].ToString()).ToString();

                lblName.Text = adminName;

            }
            else
            {
                Response.Redirect("login_admin.aspx");
            }
        }
    }
}