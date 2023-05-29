using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;

namespace projectsmember
{
    public partial class login_admin : Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginAdmin_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(RecaptchaWidget2.Response))
            {
                lblMessage.Text = "Captcha cannot be empty.";
            }
            else
            {
                var result = RecaptchaWidget2.Verify();
                if (result.Success)
                {

                    App_Code.DataSet1TableAdapters.AdminTableAdapter dstaAdmin = new App_Code.DataSet1TableAdapters.AdminTableAdapter();

                    int numberOfAdminUsers = dstaAdmin.AdminLoginQuery(txtAdminUserName.Text, txtAdminPass.Text.GetHashCode().ToString()).GetHashCode();

                    if (numberOfAdminUsers > 0)
                    {
                        var allChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                        var random = new Random();
                        var resultToken = new string(Enumerable.Repeat(allChar, 5).Select(token => token[random.Next(token.Length)]).ToArray());
                        string autoAdToken = resultToken.ToString();
                        //App_Code.DataSet1TableAdapters.AdminTableAdapter dstAdmin = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                        dstaAdmin.UpdateAdminQuery(autoAdToken, txtAdminUserName.Text, txtAdminPass.Text.GetHashCode().ToString());
                        //Login successful !
                        Session.Add("adminstatus", autoAdToken);
                        Session.Add("Name", txtAdminUserName.Text);
                        Response.Redirect("Dashboard.aspx");




                    }
                }
                else
                {
                    //Login failed
                    txtAdminUserName.Text = txtAdminPass.Text = "";
                    lblMessage.Text = "username or password is incorrect";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    txtAdminPass.BorderColor = System.Drawing.Color.Red;
                    txtAdminUserName.BorderColor = System.Drawing.Color.Red;
                }
            }

        }
    }
}