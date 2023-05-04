using System;

namespace projectsmember
{
    public partial class UserTables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            App_Code.DataSet1TableAdapters.MembersTableAdapter dstToken = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
            string MemTableLogToken = dstToken.returnRndTokenQuery(Session["Name"].ToString()).ToString();

            if (Session["status"] != null &&
                Session["status"].ToString() == MemTableLogToken.Trim())
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