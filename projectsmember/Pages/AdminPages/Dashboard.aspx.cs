using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace projectsmember
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new DataSet1TableAdapters.AdminTableAdapter();
            string AdminRndToken = dstAdminToken.returnRndAdminTokenQuery(Session["Name"].ToString());
            if (Session["adminstatus"] != null &&
                Session["adminstatus"].ToString() == AdminRndToken.Trim())
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

            DataSet1TableAdapters.MembersTableAdapter dstaMemNotif = new DataSet1TableAdapters.MembersTableAdapter();
            DataSet1TableAdapters.ProjectsTableAdapter dstaProjNotif = new DataSet1TableAdapters.ProjectsTableAdapter();
            int numMemNotif = Convert.ToInt32(dstaMemNotif.QueryMemberNotif());
            int numProjNotif = Convert.ToInt32(dstaProjNotif.QueryProjectNotif());
            int numberOfNewRequest = numMemNotif + numProjNotif;

            lblNotif.Text = Convert.ToString(numberOfNewRequest);

            SqlDataAdapter sda = new SqlDataAdapter("select * from Members", LOGConn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptMsgNotif.DataSource = dt;
            rptMsgNotif.DataBind();

           
        }

        protected void GViewProject_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                string value = e.Row.Cells[1].Text;


                if (value == "1")
                {
                    e.Row.Cells[1].Text = "طراحی سایت";
                }
                if (value == "2")
                {
                    e.Row.Cells[1].Text = "تحلیل داده -ML";
                }
                if (value == "3")
                {
                    e.Row.Cells[1].Text = "رفع اشکال برنامه نویسی";
                }
                if (value == "4")
                {
                    e.Row.Cells[1].Text = "تدریس خصوصی ";
                }
                if (value == "5")
                {
                    e.Row.Cells[1].Text = "غیره";
                }

            }


        }
    }
}