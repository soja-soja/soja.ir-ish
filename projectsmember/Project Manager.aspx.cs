using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class billing : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminstatus"] != null &&
               Session["adminstatus"].ToString() == "login_admin")
            {
                //successful login
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

            DataSet1TableAdapters.ProjectsTableAdapter dstaProjNotif2 = new DataSet1TableAdapters.ProjectsTableAdapter();
            int numProjNotif2 = Convert.ToInt32(dstaProjNotif2.QueryProjectNotif());
            lblNotif2.Text = Convert.ToString(numProjNotif2);

            SqlDataAdapter sda2 = new SqlDataAdapter("select * from Projects", LOGConn);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            rptMsgNotif2.DataSource = dt2;
            rptMsgNotif2.DataBind();



        }
    }
}