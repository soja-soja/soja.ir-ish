using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace projectsmember
{
    public partial class MasterAdmin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                App_Code.DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                string AdminRdToken = dstAdminToken.returnRndAdminTokenQuery(Session["Name"].ToString());
                if (Session["adminstatus"] != null &&
                    Session["adminstatus"].ToString() == AdminRdToken.Trim())
                {
                    //successful login1!
                    App_Code.DataSet1TableAdapters.AdminTableAdapter dtaAdminName = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                    string adminName = dtaAdminName.ReturnAdminName(Session["Name"].ToString()).ToString();

                    lblName.Text = adminName;

                }
                else
                {
                    Response.Redirect("login_admin.aspx");
                }
            }
            catch(Exception)
            {
                Response.Redirect("login_admin.aspx");
            }
        }
    }
}