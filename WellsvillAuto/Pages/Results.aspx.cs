using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WellsvillAuto.Pages
{
    public partial class Results : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            fName.Text = Request.Form.Get("fName");
            lName.Text = Request.Form.Get("lName");
            year.Text = Request.Form.Get("year");
            make.Text = Request.Form.Get("make");
            model.Text = Request.Form.Get("model");


        }
    }
}