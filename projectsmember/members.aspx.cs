using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectsmember.members
{
    public partial class members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["status"] != null &&
                Session["status"].ToString()== "signin")
            {
                //successful login1!
                DataSet1TableAdapters.MembersTableAdapter dtaUsrWlcom = new DataSet1TableAdapters.MembersTableAdapter();
                string userWelcom = dtaUsrWlcom.returnSojaUserID(Session["SojaID"].ToString());
                lblWelcome.Text = userWelcom + lblWelcome.Text ;
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}