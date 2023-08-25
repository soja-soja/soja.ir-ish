using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Linq;



namespace projectsmember.members
{
    public partial class members : System.Web.UI.Page
    {
        public class ControlProcessor
        {
            public void ProcessHtmlControls(int challengeNumber, List<HtmlGenericControl> htmlControls)
            {
                for (int i = 0; i < challengeNumber; i++)
                {
                    if (i < htmlControls.Count)
                    {
                        HtmlGenericControl control = htmlControls[i];

                        foreach (var span in control.Controls.OfType<HtmlGenericControl>().Where(c => c.TagName == "span"))
                        {
                            span.Attributes["class"] = span.Attributes["class"].Replace("placeholder", "");
                            span.Attributes["class"] = span.Attributes["class"].Replace("placeholder-glow", "");
                        }
                    }
                    else
                    {
                        break;
                    }
                }
            }

        }
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
                    App_Code.DataSet1TableAdapters.MembersTableAdapter dstaChlngNum = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                    int challengeNum = Convert.ToInt32(dstaChlngNum.ReturnChalengeNum((string)Session["Name"]).ToString());


                    List<HtmlGenericControl> htmlControls = new List<HtmlGenericControl>();

                    HtmlGenericControl parentControl = (HtmlGenericControl)FindControl("parent");

                    foreach (Control childControl in parentControl.Controls)
                    {
                        HtmlGenericControl divControl = childControl as HtmlGenericControl;
                        if (divControl != null && divControl.TagName.ToLower() == "div" && divControl.Attributes["class"] == "card-body")
                        {
                            htmlControls.Add(divControl);
                        }
                    }

                    ControlProcessor processor = new ControlProcessor();
                    int challengeIndex = 2; // start processing controls from index 2
                    processor.ProcessHtmlControls(challengeNum - challengeIndex, htmlControls);


                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}