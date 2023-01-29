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
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e, int notifNumMem)
        {
            //if (Session["adminstatus"] != null &&
            //    Session["adminstatus"].ToString() == "login_admin")
            //{
            //    successful login1!
            //         DataSet1TableAdapters.AdminTableAdapter dtaName = new DataSet1TableAdapters.AdminTableAdapter();
            //    string adminName = (string)dtaName.ReturnAdminName(Session["Username"].ToString());

            //    lblName.Text = adminName;

            //}
            //else
            //{
            //    Response.Redirect("login_admin.aspx");
            //}

            if (LOGConn.State == ConnectionState.Open)
            {
                LOGConn.Close();
            }
                LOGConn.Open();
            //DataSet1TableAdapters.MembersTableAdapter dstaMemNotif = new DataSet1TableAdapters.MembersTableAdapter();
            //DataSet1TableAdapters.ProjectsTableAdapter dstaProjNotif = new DataSet1TableAdapters.ProjectsTableAdapter();
            //int numMemNotif = Convert.ToInt32(dstaMemNotif.QueryMemberNotif());
            //// Console.WriteLine(numMemNotif);
            //int numProjNotif = Convert.ToInt32(dstaProjNotif.QueryProjectNotif());
            //// Console.WriteLine(numProjNotif);
            //int numberOfNewRequest = numMemNotif + numProjNotif;
            ////Console.WriteLine(numberOfNewRequest);
            //// Console.ReadKey();
            //if (((Page)System.Web.HttpContext.Current.CurrentHandler).IsPostBack)
            //{
                lblNotif.Text = Convert.ToString(44);
            //}
            //Convert.ToString(numberOfNewRequest);

            //DataSet1TableAdapters.MembersTableAdapter dstaNotif = new DataSet1TableAdapters.MembersTableAdapter();
            // string dt = dstaNotif.returnSojaUserID(Session["SojaID"].ToString());
            // rptMsgNotif.DataSource = dt;
            // rptMsgNotif.DataBind();

           
        }





        protected void GViewProject_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                string value = e.Row.Cells[1].Text;
                

                if (value== "1")
                {
                    e.Row.Cells[1].Text = "طراحی سایت";
                }
                if (value== "2")
                {
                    e.Row.Cells[1].Text = "تحلیل داده -ML";
                }
                if (value== "3")
                {
                    e.Row.Cells[1].Text = "رفع اشکال برنامه نویسی";
                }
                if (value== "4")
                {
                    e.Row.Cells[1].Text ="تدریس خصوصی ";
                }
                if (value== "5")
                {
                    e.Row.Cells[1].Text = "غیره";
                }
            }
        }
    }
}