using MongoDB.Driver.Core.Configuration;
using System;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class login_admin : System.Web.UI.Page
    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            txtAdminUserName.Attributes.Add("placeholder", "Username");
            txtAdminPass.Attributes.Add("placeholder", "Password");
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
            DataSet1TableAdapters.AdminTableAdapter dstaAdmin = new DataSet1TableAdapters.AdminTableAdapter();

            int numberOfAdminUsers = dstaAdmin.AdminLoginQuery(txtAdminUserName.Text,txtAdminPass.Text).GetValueOrDefault();

            if (numberOfAdminUsers > 0)
            {
                //Login successful !
                Session.Add("adminstatus", "login_admin");
                Session.Add("Username", txtAdminUserName.Text);
                Response.Redirect("Admin-Dashboard.aspx");
               
            }

            else
            {
                //Login failed

                txtAdminUserName.Text = txtAdminPass.Text = "";
                lblMessage.Text = "username or password is incorrect";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}