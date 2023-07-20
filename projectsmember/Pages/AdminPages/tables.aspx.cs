using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{

    public partial class tables : Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                App_Code.DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                string AdminRnnndToken = dstAdminToken.returnRndAdminTokenQuery(Session["Name"].ToString());
                if (Session["adminstatus"] != null &&
                    Session["adminstatus"].ToString() == AdminRnnndToken.Trim())
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
            catch (Exception)
            {
                Response.Redirect("login_admin.aspx");
            }

        }

        protected void GViewFullMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                string Subscrib = e.Row.Cells[2].Text;


                if (Subscrib == "1")
                {
                    e.Row.Cells[2].Text = "عضو هست";
                }
                if (Subscrib == "-2")
                {
                    e.Row.Cells[2].Text = "عضو نیست";
                }
                if (Subscrib == "0")
                {
                    e.Row.Cells[2].Text = "---";
                }

            }
            //foreach (GridViewColumnsGenerator col in GViewFullMember.Columns)
            //{
            //    CheckBoxField cbfChecked = (CheckBoxField)col.
            //    CheckBoxField cbfContacted = (CheckBoxField)col.Columns[8];
            //    CheckBoxField cbfEngaged = (CheckBoxField)col.Columns[9];


            //    // Enable the check box field
            //    cbfChecked.Enabled = true;
            //    cbfContacted.Enabled = true;
            //    cbfEngaged.Enabled = true;
            //}


            foreach (GridViewRow row in GViewFullMember.Rows)
            {
                // Get the check box field in the first column
                CheckBoxField cbfChecked = (CheckBoxField)row.Cells[7];
                CheckBoxField cbfContacted = (CheckBoxField)row.Cells[8].Controls[0];
                CheckBoxField cbfEngaged = (CheckBoxField)row.Cells[9].Controls[0];

                // Enable the check box field
                cbfChecked.Enabled = true;
                cbfContacted.Enabled = true;
                cbfEngaged.Enabled = true;
            }


        }

        protected void GViewFullProject_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                string ProjectType = e.Row.Cells[2].Text;

                if (ProjectType == "0")
                {
                    e.Row.Cells[2].Text = "---";
                }
                if (ProjectType == "1")
                {
                    e.Row.Cells[2].Text = "طراحی سایت";
                }
                if (ProjectType == "2")
                {
                    e.Row.Cells[2].Text = "تحلیل داده -ML";
                }
                if (ProjectType == "3")
                {
                    e.Row.Cells[2].Text = "رفع اشکال برنامه نویسی";
                }
                if (ProjectType == "4")
                {
                    e.Row.Cells[2].Text = "تدریس خصوصی ";
                }
                if (ProjectType == "5")
                {
                    e.Row.Cells[2].Text = "غیره";
                }

                string Reffral = e.Row.Cells[1].Text;
                if (Reffral == "0")
                {
                    e.Row.Cells[1].Text = "هیچکدام";
                }
                if (Reffral == "1")
                {
                    e.Row.Cells[1].Text = "یوتیوب";
                }
                if (Reffral == "2")
                {
                    e.Row.Cells[1].Text = "سایت soja.ir";
                }
                if (Reffral == "3")
                {
                    e.Row.Cells[1].Text = "دیگر";
                }

            }



            //e.Row.Cells[5].Text = e.Row.Cells[5].Text.Replace("|$|", "<br>");



            string val = e.Row.Cells[5].Text;
            string[] newstr = val.Split(new string[] { "|$|" }, StringSplitOptions.RemoveEmptyEntries);
            e.Row.Cells[5].Text = "";
            for (int i = 0; i < newstr.Count(); i++)
            {
                e.Row.Cells[5].Text += newstr[i].ToString() + "<br> ";
            }

            //    CheckBoxField cbfPChecked = (CheckBoxField)GViewFullMember.Columns[8];
            //    CheckBoxField cbfPContacted = (CheckBoxField)GViewFullMember.Columns[9];
            //    CheckBoxField cbfPEngaged = (CheckBoxField)GViewFullMember.Columns[10];
            //    CheckBoxField cbfPofferedToMembers = (CheckBoxField)GViewFullMember.Columns[11];


            //    // Enable the check box field
            //    cbfPChecked.Enabled = true;
            //    cbfPContacted.Enabled = true;
            //    cbfPEngaged.Enabled = true;
            //    cbfPofferedToMembers.Enabled = true;
            //}


        }
    }