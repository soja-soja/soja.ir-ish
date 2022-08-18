using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class signindesign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtOther.Attributes.Add("placeholder", "لطفا نحوه آشنایی را بنویسید.");
            txtOtherProject.Attributes.Add("placeholder", "نوع پروژه خود را بنویسید.");
            txtBudget.Attributes.Add("placeholder", "مبلغ به تومان ");
            txtDeliveryTime.Attributes.Add("placeholder", "زمان مورد نظر به روز ");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
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
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                    lblErr.Text = "رباتی؟";
                    //foreach (var err in result.ErrorCodes)
                    //{
                    //    lblErr.Text = lblErr.Text + err;
                    //}
                }
            }
        }
    }
}