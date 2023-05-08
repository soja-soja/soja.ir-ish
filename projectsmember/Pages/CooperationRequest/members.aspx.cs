using System;

namespace projectsmember.members
{
    public partial class members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                App_Code.DataSet1TableAdapters.MembersTableAdapter dstToken = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                string MemToken = dstToken.returnRndTokenQuery(Session["Name"].ToString()).ToString();
                if (Session["status"] != null &&
                    Session["status"].ToString() == MemToken.Trim())
                {
                    //successful login!
                    App_Code.DataSet1TableAdapters.MembersTableAdapter dtaUsrWlcom = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                    string userWelcom = dtaUsrWlcom.returnSojaUserID(Session["Name"].ToString());
                    lblWelcome.Text = userWelcom + lblWelcome.Text;
                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
            catch(Exception)
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}