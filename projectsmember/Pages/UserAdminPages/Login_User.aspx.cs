using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;

namespace projectsmember
{
    public partial class Login_User : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginUser_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(RecaptchaWidget3.Response))
            {
                lblMessage.Text = "Captcha cannot be empty.";
            }
            else
            {
                var result = RecaptchaWidget3.Verify();
                if (result.Success)
                {
                    App_Code.DataSet1TableAdapters.MembersTableAdapter dstaMem = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                    int numberOfUsers = dstaMem.QueryLoginUser(txtUserName.Text, txtPass.Text.GetHashCode().ToString()).GetHashCode();


                    if (numberOfUsers > 0)
                    {

                        var allChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                        var random = new Random();
                        var resultToken = new string(Enumerable.Repeat(allChar, 5).Select(token => token[random.Next(token.Length)]).ToArray());
                        string autoToken = resultToken.ToString();
                        //DataSet1TableAdapters.MembersTableAdapter dstaToken = new DataSet1TableAdapters.MembersTableAdapter();
                        dstaMem.UpdateQuery(autoToken, txtUserName.Text, txtPass.Text.GetHashCode().ToString());
                        //Login successful !
                        Session.Add("status", autoToken);
                        Session.Add("Name", txtUserName.Text);
                        Response.Redirect("~/Pages/CooperationRequest/members.aspx");
                    }
                    else
                    {
                        //Login failed

                        txtUserName.Text = txtPass.Text = "";
                        lblMessage.Text = "username or password is incorrect";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        txtPass.BorderColor = System.Drawing.Color.Red;
                        txtUserName.BorderColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblMessage.Text = "رباتی؟ ";
                }
            }
        }
    }
}