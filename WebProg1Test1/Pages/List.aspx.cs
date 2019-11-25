using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProg1Test1.Pages
{
    public partial class List : System.Web.UI.Page
    {
        public ArrayList outAl = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = Session["cs"] as string;
            SqlConnection cnn;

            if (String.IsNullOrWhiteSpace(CS))
            {
                Response.Redirect("Index.aspx");
            }

            SqlDataReader dr;
            SqlDataAdapter adpt = new SqlDataAdapter();
            SqlCommand cmmd;
            string sql, iSql = "", output = "", recId = "";
            int id = 0;

            sql = "SELECT id FROM dbo.WebTest order by id desc";

            cnn = new SqlConnection(CS);

            cnn.Open();
            cmmd = new SqlCommand(sql, cnn);
            dr = cmmd.ExecuteReader();
            while (dr.Read())
            {
                id = Convert.ToInt32(dr.GetValue(0));
                break;
            }

            cmmd.Dispose();
            cnn.Close();
            id++;
            //id has now been grabbed, so lets insert our record
            SqlCommand scmd2;
            string mess = "";
            cnn.Open();

            if (String.IsNullOrWhiteSpace(Request["msg"]))
            {
                iSql = "INSERT INTO dbo.WebTest (id, uName, fName, lname, email, pword) VALUES  " +
                    "(" + id + ", '" + Request.Form.Get("uName") + "', '" + Request.Form.Get("fName") + "', '" + Request.Form.Get("lName") + "', '" + Request.Form.Get("email") + "','" + Request.Form.Get("pword") + "')";
                scmd2 = new SqlCommand(iSql, cnn);
                adpt.InsertCommand = new SqlCommand(iSql, cnn);
                adpt.InsertCommand.ExecuteNonQuery();
                scmd2.Dispose();
            }
            else
            {
                mess = Request["msg"];
                
            }



            //record has been inserted, now lets grab the results

            sql = "SELECT id,fname,lname,email,uname FROM dbo.WebTest order by id";
            cmmd = new SqlCommand(sql, cnn);
            dr = cmmd.ExecuteReader();
            ArrayList recAL = new ArrayList();

            while (dr.Read())
            {
                recAL = new ArrayList();
                recAL.Add(dr.GetValue(0));
                recAL.Add(dr.GetValue(1));
                recAL.Add(dr.GetValue(2));
                recAL.Add(dr.GetValue(3));
                recAL.Add(dr.GetValue(4));

                outAl.Add(recAL);
                
            }

            dr.Close();
            cmmd.Dispose();
            Response.Write(output);
            cnn.Close();
        }
    }
}