using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Attributes.Add("placeholder" ,"نام کاربری را وارد کنید") ;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters .sojaUsersInfoTableAdapter users = new DataSet1TableAdapters .sojaUsersInfoTableAdapter();
            int numberOfUsers = users.LoginQuery(txtUsername.Text).GetValueOrDefault();

            if(numberOfUsers > 0)
            {
                //Login successful !
                Session.Add("status", "signin");
                Response.Redirect("members.aspx");

            }

            else
            {
                //Login failed

                txtUsername.Text  = "";
                lblErr.Text  = "نام کاربری یافت نشد";
            }

        }


              
       

        protected void btnRegFinal_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.sojaUsersInfoTableAdapter usda = new DataSet1TableAdapters.sojaUsersInfoTableAdapter();
            usda.Insert(txtSojaUserName.Text, txtEmail.Text, txtPhoneNumber.Text);
            txtSojaUserName.Text = txtEmail.Text = txtPhoneNumber.Text = "";

            btnRegFinal.Text = "اطلاعات ثبت شد";
        }
    }
}