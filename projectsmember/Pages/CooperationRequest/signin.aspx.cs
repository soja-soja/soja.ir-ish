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