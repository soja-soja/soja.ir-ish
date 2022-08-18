using System;

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
            //DataSet1TableAdapters .sojaUsersInfoTableAdapter users = new DataSet1TableAdapters .sojaUsersInfoTableAdapter();
            int numberOfUsers = 0;
            //users.LoginQuery(txtUsername.Text).GetValueOrDefault();

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
            if (String.IsNullOrEmpty(RecaptchaWidget1.Response))
            {
                lblErr.Text = "Captcha cannot be empty.";
            }
            else
            {
                var result = RecaptchaWidget1.Verify();
                if (result.Success)
                {
                    //DataSet1TableAdapters.sojaUsersInfoTableAdapter usda = new DataSet1TableAdapters.sojaUsersInfoTableAdapter();
                    //usda.Insert(txtSojaUserName.Text, txtEmail.Text, txtPhoneNumber.Text);
                    txtSojaUserName.Text = txtEmail.Text = txtPhoneNumber.Text = "";

                    btnRegFinal.Text = "اطلاعات ثبت شد";
                }
                else
                {
                    lblErr.Text = "رباتی؟ ";
                    //foreach (var err in result.ErrorCodes)
                    //{
                    //    lblErr.Text = lblErr.Text + err;
                    //}
                }
            }
            
        }

        protected void btnRegStep1_Click(object sender, EventArgs e) => btnRegStep1.Text = "اطلاعات ثبت شد";

        protected void btnRegStep2_Click(object sender, EventArgs e) => btnRegStep2.Text = "اطلاعات ثبت شد";
        
    }
}