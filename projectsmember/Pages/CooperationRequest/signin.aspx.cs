using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;

namespace projectsmember
{
    public partial class signin : Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Length > 0 && txtPass.Text.Length > 0)
            {
                if (String.IsNullOrEmpty(RecaptchaWidget2.Response))
                {
                    lblErr.Text = "Captcha cannot be empty.";
                }
                else
                {
                    var result = RecaptchaWidget2.Verify();
                    if (result.Success)
                    {
                        App_Code.DataSet1TableAdapters.MembersTableAdapter dstaMem = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                        int numberOfUsers = dstaMem.QueryLoginUser(txtUsername.Text, txtPass.Text).GetHashCode();

                        if (numberOfUsers > 0)
                        {
                            var allChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                            var random = new Random();
                            var resultToken = new string(
                               Enumerable.Repeat(allChar, 5)
                               .Select(token => token[random.Next(token.Length)]).ToArray());

                            string authToken = resultToken.ToString();
                            App_Code.DataSet1TableAdapters.MembersTableAdapter dstaToken = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                            dstaToken.UpdateQuery(authToken, txtUsername.Text, txtPass.Text);
                            //Login successful !
                            Session.Add("status", authToken);
                            Session.Add("SojaID", txtUsername.Text);
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
                    else
                    {
                        //Login failed
                        txtUsername.Text = "";
                        lblErr.Text = " ورود موفقیت آمیز نبود!";
                        lblErr.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            else
            {
                //Login failed
                txtUsername.Text = "";
                lblErr.Text = " کلمه عبور و نام کاربری را وارد کنید";
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
                    int vSubUtube = rbtnYouTube.SelectedIndex;
                    int vSubApar = rbtnAparat.SelectedIndex;
                    int vSub = vSubUtube + vSubApar;
                    string videoWatchYtube = "";
                    string videoWatchAparat = "";
                    for (int i = 0; i < ckbVideoYuotube.Items.Count; i++)
                    {
                        if (ckbVideoYuotube.Items[i].Selected)
                        {
                            videoWatchYtube += "," + ckbVideoYuotube.Items[i].Text;

                        }

                    }
                    for (int j = 0; j < ckbVideoAparat.Items.Count; j++)
                    {
                        if (ckbVideoAparat.Items[j].Selected)
                        {
                            videoWatchAparat += "," + ckbVideoAparat.Items[j].Text;
                        }

                    }


                    string videoWatch = videoWatchYtube + videoWatchAparat;

                    App_Code.DataSet1TableAdapters.MembersTableAdapter dsta = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                    dsta.Insert(vSub, videoWatch, txtSojaUserName.Text, txtEmail.Text, txtPhoneNumber.Text, false, false, false, "", txtUrl.Text);
                    txtUrl.Text = txtSojaUserName.Text = txtEmail.Text = txtPhoneNumber.Text = txtUrl.Text = "";
                    btnRegFinal.Text = "اطلاعات ثبت شد";
                    multiViewReg.ActiveViewIndex = 3;

                }
                else
                {
                    lblErr.Text = "رباتی؟ ";
                }
            }


        }


        protected void btnSendStep1_Click(object sender, EventArgs e)
        {
            multiViewReg.ActiveViewIndex = 1;
        }

        protected void btnSendStep2_Click(object sender, EventArgs e)
        {
            multiViewReg.ActiveViewIndex = 2;
        }

        protected void btnBackStep2_Click(object sender, EventArgs e)
        {
            multiViewReg.ActiveViewIndex = 1;
        }

        protected void btnBackStep1_Click(object sender, EventArgs e)
        {
            multiViewReg.ActiveViewIndex = 0;
        }
    }
}