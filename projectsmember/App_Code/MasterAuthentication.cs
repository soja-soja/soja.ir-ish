using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace projectsmember
{
    public partial class MasterAuthentication
    {
        public MasterAuthentication() { }
        public static string getLoggedInMasterUsername()
        {
            try
            {
                App_Code.DataSet1TableAdapters.AdminTableAdapter dstAdminToken = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                string AdminRdToken = dstAdminToken.returnRndAdminTokenQuery(HttpContext.Current.Session["Name"].ToString());
                if (
                    HttpContext.Current.Session["adminstatus"] != null &&
                    HttpContext.Current.Session["adminstatus"].ToString() == AdminRdToken.Trim())
                {
                    //successful login1!
                    App_Code.DataSet1TableAdapters.AdminTableAdapter dtaAdminName = new App_Code.DataSet1TableAdapters.AdminTableAdapter();
                    string adminName = dtaAdminName.ReturnAdminName(HttpContext.Current.Session["Name"].ToString()).ToString();

                    return adminName;
                }
                else
                {
                    return "";
                }
            }
            catch (Exception)
            {
                return "";
            }
        }
    }
}