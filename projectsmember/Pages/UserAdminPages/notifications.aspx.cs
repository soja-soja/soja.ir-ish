using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember
{
    public partial class notifications : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet1TableAdapters.MembersTableAdapter dstToken = new DataSet1TableAdapters.MembersTableAdapter();
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