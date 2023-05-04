using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace projectsmember
{

    public partial class project_management : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                App_Code.DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                string AdminRandToken = dstAdminToken.returnRndAdminTokenQuery(Session["Name"].ToString());
                if (Session["adminstatus"] != null &&
                    Session["adminstatus"].ToString() == AdminRandToken.Trim())
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


                App_Code.DataSet1TableAdapters.ProjectsTableAdapter dstaProjNotif2 = new App_Code.DataSet1TableAdapters.ProjectsTableAdapter();
                int numProjNotif2 = Convert.ToInt32(dstaProjNotif2.QueryProjectNotif());
                lblNotif2.Text = Convert.ToString(numProjNotif2);

                SqlDataAdapter sda2 = new SqlDataAdapter("select * from Projects", LOGConn);
                DataTable dt2 = new DataTable();
                sda2.Fill(dt2);
                rptMsgNotif2.DataSource = dt2;
                rptMsgNotif2.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("login_admin.aspx");
            }

        }
    }
}