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
            if (Session["adminstatus"] != null &&
                Session["adminstatus"].ToString() == "login_admin")
            {
                //successful login1!
                DataSet1TableAdapters.AdminTableAdapter dtaAdminName = new DataSet1TableAdapters.AdminTableAdapter();
                string adminName = dtaAdminName.ReturnAdminName(Session["Name"].ToString()).ToString();
                //dtaAdminName.ReturnAdminName(Session["Username"].ToString());

                lblName.Text = adminName;

            }
            else
            {
                Response.Redirect("login_admin.aspx");
            }

            if (LOGConn.State == ConnectionState.Open)
            {
                LOGConn.Close();
            }
            LOGConn.Open();
            DataSet1TableAdapters.MembersTableAdapter dstaMemNotif = new DataSet1TableAdapters.MembersTableAdapter();
            DataSet1TableAdapters.ProjectsTableAdapter dstaProjNotif = new DataSet1TableAdapters.ProjectsTableAdapter();
            int numMemNotif = Convert.ToInt32(dstaMemNotif.QueryMemberNotif());
            int numProjNotif = Convert.ToInt32(dstaProjNotif.QueryProjectNotif());
            int numberOfNewRequest = numMemNotif + numProjNotif;

            lblNotif.Text = Convert.ToString(numberOfNewRequest);

            //DataSet1TableAdapters.MembersTableAdapter dstaNotif = new DataSet1TableAdapters.MembersTableAdapter();
            SqlDataAdapter sda = new SqlDataAdapter("select * from Members", LOGConn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptMsgNotif.DataSource = dt;
            rptMsgNotif.DataBind();

            //SqlDataAdapter sda2 = new SqlDataAdapter("select ProjectType from Projects", LOGConn);
            //DataTable dt2 = new DataTable();
            //sda2.Fill(dt2);
            //rptMsgNotif.DataSource = dt2;
            //rptMsgNotif.DataBind();
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

            //string grv = e.Row.Cells[7].Text;
            //if (grv == "0")
            //{
            //    e.Row.BackColor = System.Drawing.Color.Red;
            //}
            //else
            //{
            //    e.Row.BackColor = System.Drawing.Color.Green;
            //}

        }
    }
}