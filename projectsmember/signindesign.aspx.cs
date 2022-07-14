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


    }
}