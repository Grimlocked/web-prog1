using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            Session["cs"] = @"Data Source =MSI\SQLEXPRESS; Initial Catalog=master; User ID=app; Password=password1";

            string CS;
            SqlConnection cnn;
            SqlDataReader dr;
            SqlCommand cmmd;
            string sql, output = "";

            

            CS = Session["cs"] as string;
            cnn = new SqlConnection(CS);
            cnn.Open();
            cmmd = new SqlCommand(sql, cnn);
            dr = cmmd.ExecuteReader();
            dr.Close();
            cmmd.Dispose();
            cnn.Close();

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