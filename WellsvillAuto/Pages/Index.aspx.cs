using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WellsvillAuto.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PhoneLbl.Text = "Phone:";

        }

        protected void cusPhone_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            if (e.Value.Length == 10)
                e.IsValid = true;
            else
            {
                e.IsValid = false;
            }

            if (e.IsValid)
            {
                Response.Redirect("Results.aspx");
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

    }
}