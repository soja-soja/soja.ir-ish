using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

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
                    App_Code.DataSet1TableAdapters.MembersTableAdapter dstaChlngNum = new App_Code.DataSet1TableAdapters.MembersTableAdapter();
                    string chalengeNum = (dstaChlngNum.ReturnChalengeNum(Session["Name"].ToString())).ToString();
                    if (chalengeNum == "2")
                    {
                        foreach (HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }
                    else if (chalengeNum == "3")
                    {
                        foreach (HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng3.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }
                    else if (chalengeNum == "4")
                    {
                        foreach(HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");
                        }
                        foreach (HtmlGenericControl span in chlng3.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng4.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }
                    else if (chalengeNum == "5")
                    {
                        foreach (HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");
                        }
                        foreach (HtmlGenericControl span in chlng3.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng4.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng5.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }
                    else if (chalengeNum == "6")
                    {
                        foreach (HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");
                        }
                        foreach (HtmlGenericControl span in chlng3.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng4.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng5.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng6.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }
                    else if (chalengeNum == "7")
                    {
                        foreach (HtmlGenericControl span in chlng2.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");
                        }
                        foreach (HtmlGenericControl span in chlng3.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng4.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng5.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng6.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                        foreach (HtmlGenericControl span in chlng7.Controls)
                        {
                            string classes = span.Attributes["class"];
                            span.Attributes["class"] = classes.Replace("placeholder", "");
                            span.Attributes["class"] = classes.Replace("placeholder-glow", "");

                        }
                    }




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