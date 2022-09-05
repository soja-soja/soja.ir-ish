using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MongoDB.Driver.Core.Configuration;

namespace projectsmember
{
    public partial class signin : Page

    {
        SqlConnection LOGConn = new SqlConnection(ConfigurationManager.ConnectionStrings["sojaIrishConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Attributes.Add("placeholder", "نام کاربری را وارد کنید");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            DataSet1TableAdapters.MembersTableAdapter dstaMem = new DataSet1TableAdapters.MembersTableAdapter();
            int numberOfUsers = dstaMem.LoginQuery(txtUsername.Text).GetValueOrDefault();

            if (numberOfUsers > 0)
            {
                //Login successful !
                Session.Add("status", "signin");
                Response.Redirect("members.aspx");

            }

            else
            {
                //Login failed

                txtUsername.Text = "";
                lblErr.Text = "نام کاربری یافت نشد";
                lblErr.ForeColor = System.Drawing.Color.Red;
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

            int vSubUtube = rbtnYouTube.SelectedIndex;
            int vSubApar = rbtnAparat.SelectedIndex;
            int vSub = vSubUtube + vSubApar;
            string videoWatchYtube = "";
            string videoWatchAparat = "";
            for (int i = 0; i < ckbVideoYuotube.Items.Count; i++)
            {
                if (videoWatchYtube == "")
                {
                    videoWatchYtube = ckbVideoYuotube.Items[i].Text;


                }
                else
                {
                    videoWatchYtube += "," + ckbVideoYuotube.Items[i].Text;

                }
            }
            for (int j = 0; j < ckbVideoAparat.Items.Count; j++)
            {
                if (videoWatchAparat == "")
                {
                    videoWatchAparat = ckbVideoAparat.Items[j].Text;

                }
                else
                {
                    videoWatchAparat += "," + ckbVideoAparat.Items[j].Text;

                }
            }
            string videoWatch = videoWatchYtube + "&&" + videoWatchAparat;
            DataSet1TableAdapters.MembersTableAdapter dsta = new DataSet1TableAdapters.MembersTableAdapter();
            dsta.Insert(
                vSub, videoWatch, txtSojaUserName.Text, txtEmail.Text, txtPhoneNumber.Text, false, false, false, "", txtUrl.Text);
            txtUrl.Text = txtSojaUserName.Text = txtEmail.Text = txtPhoneNumber.Text = txtUrl.Text = "";
            //step1.visible = false;
            //final.Visible = true;
            
           btnRegFinal.Text = "اطلاعات ثبت شد";


        }


    }
}