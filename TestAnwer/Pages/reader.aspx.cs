using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webTest.Pages
{
    public partial class reader : System.Web.UI.Page
    {
        public ArrayList rs = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = @"Data Source =localhost; Initial Catalog=master; User ID=app2; Password=password1";
            SqlConnection sc;
            SqlDataReader dr, dr2;
            SqlCommand cmd, cmd2;
            string qry = "select id,fn,ln,email,un from dbo.users order by id";
            string idqry = "SELECT id FROM dbo.users order by id desc";
            int id = 0;
            
            string p = Request["p"];
            SqlDataAdapter adpt = new SqlDataAdapter();

            sc = new SqlConnection(cs);
            sc.Open();
            if (!p.Equals("r"))
            {
               
                cmd = new SqlCommand(idqry, sc);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    id = Convert.ToInt32(dr.GetValue(0));
                    break;
                }
                id += id;
                dr.Close();
                string insert = "insert into dbo.users (id,fn,ln,un,pass,email) values (" +
                id + ",'" + Request.Form.Get("fn") + "','" + Request.Form.Get("ln") + "','" + Request.Form.Get("un") + "','" + Request.Form.Get("pass") + "'," +
                "'" + Request.Form.Get("em") + "')";
                cmd = new SqlCommand(insert, sc);
                adpt.InsertCommand = new SqlCommand(insert,sc);
                adpt.InsertCommand.ExecuteNonQuery();

            }
            cmd2 = new SqlCommand(qry, sc);
            dr2 = cmd2.ExecuteReader();
            ArrayList recAL = new ArrayList();

            while (dr2.Read())
            {
                recAL = new ArrayList();
                recAL.Add(dr2.GetValue(0));
                recAL.Add(dr2.GetValue(1));
                recAL.Add(dr2.GetValue(2));
                recAL.Add(dr2.GetValue(3));
                recAL.Add(dr2.GetValue(4));


                rs.Add(recAL);
            }

        }
    }
}