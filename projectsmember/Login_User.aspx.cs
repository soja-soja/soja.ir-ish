using Recaptcha.Web.UI.Controls;
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
    public partial class Login_User : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Attributes.Add("placeholder", "Username");
            txtPass.Attributes.Add("placeholder", "Password");
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
                    // Response.Redirect("Admin-Dashboard.aspx");
                }
                else
                {
                    lblMessage.Text = "رباتی؟ ";
                    //foreach (var err in result.ErrorCodes)
                    //{
                    //   lblMessage.Text = lblMessage.Text + err;
                    //}
                }
            }

            DataSet1TableAdapters.MembersTableAdapter dstaMem = new DataSet1TableAdapters.MembersTableAdapter();
            int numberOfUsers = dstaMem.QueryLoginUser(txtUserName.Text, txtPass.Text).GetHashCode();

            if (numberOfUsers > 0)
            {
                //Login successful !
                Session.Add("status", "Login_User");
                Response.Redirect("Profile.aspx");

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
    }
}