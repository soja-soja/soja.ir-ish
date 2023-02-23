using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.MembersTableAdapter dstToken = new DataSet1TableAdapters.MembersTableAdapter();
            string MemLogToken = dstToken.returnRndTokenQuery(Session["Name"].ToString()).ToString();

            if (Session["status"] != null &&
                Session["status"].ToString() == MemLogToken.Trim())
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