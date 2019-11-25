using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProg1Test1.Pages
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

            sql = "SELECT id, uName,fName, lname, email, pword FROM dbo.WebTest";

            CS = Session["cs"] as string;
            cnn = new SqlConnection(CS);

            cnn.Open();
            cmmd = new SqlCommand(sql, cnn);
            dr = cmmd.ExecuteReader();
            while (dr.Read())
            {
                output = output + " Username: " + dr.GetValue(0) + " First Name: " + dr.GetValue(1) + " Last Name: " + dr.GetValue(2) + " Email: " + dr.GetValue(3) + " Password: " + dr.GetValue(4) + "  </br>";
            }
            dr.Close();
            cmmd.Dispose();
            cnn.Close();
        }
    }
}