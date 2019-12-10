using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

            if (String.IsNullOrWhiteSpace(CS))
            {
                Response.Redirect("Index.aspx");
            }

            string CS = Session["cs"] as string;
            SqlConnection cnn;
            SqlDataReader dr;
            SqlDataAdapter adpt = new SqlDataAdapter();
            SqlCommand cmmd;
            string sql, iSql = "", output = "", recId = "";

            sql = "SELECT id,fName, lname, streetAdr, city, state, zip, email, phone, studentConf, stuIDNumber, vehMake, vehModel, vehYear, problemDesc FROM dbo.Wellsville";

            fName.Text = Request.Form.Get("fName");
            lName.Text = Request.Form.Get("lName");
            year.Text = Request.Form.Get("year");
            make.Text = Request.Form.Get("make");
            model.Text = Request.Form.Get("model");


        }
    }
}