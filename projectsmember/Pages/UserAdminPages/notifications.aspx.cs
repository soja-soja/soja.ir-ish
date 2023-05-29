using System;
using System.Web.UI;

namespace projectsmember
{
    public partial class notifications : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            App_Code.DataSet1TableAdapters.MembersTableAdapter dstToken = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
            string MemberLogToken = dstToken.returnRndTokenQuery(Session["Name"].ToString()).ToString();

            if (Session["status"] != null &&
                Session["status"].ToString() == MemberLogToken.Trim())
            {
                //successful login1!

            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }
        }


    }
}