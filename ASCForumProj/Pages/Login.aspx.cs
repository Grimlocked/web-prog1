using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASCForumProj.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!String.IsNullOrWhiteSpace(Request.Form["uName"]) && !String.IsNullOrWhiteSpace(Request.Form["pWord"]))
            {
                string cs = @"Data Source =MSI\SQLEXPRESS; Initial Catalog=WebAppS1; User ID=app; Password=password1";
                string uName = Request.Form["uName"];
                string pWord = Request.Form["pWord"];
                string qry = "SELECT COUNT(id) FROM dbo.users WHERE uName =@user and pword =@pass";
                int res = 0;
                SqlConnection sc;
                SqlDataReader dr, dr2;
                SqlCommand cmd, cmd2;

                sc = new SqlConnection(cs);
                sc.Open();
                cmd = new SqlCommand(qry, sc);
                cmd.Parameters.Add("@user", uName);
                cmd.Parameters.Add("@pass", pWord);

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    res = Convert.ToInt32(dr.GetValue(0));
                    break;
                }
                dr.Close();
                cmd.Dispose();

                if (res < 1)
                {
                    msg.Text = "Username and Password Combination doesn't exist. Please retry, or signup!";
                    Session["cs"] = cs;
                    Session["msg"] = msg.Text;
                    Response.Redirect("AuthMain.aspx?msg=" + msg.Text);
                }
                else
                {
                    qry = "SELECT id,uname,admn FROM dbo.users WHERE uName = @user AND pWord = @pass";
                    cmd2 = new SqlCommand(qry, sc);
                    cmd2.Parameters.Add("@user", uName);
                    cmd2.Parameters.Add("@pass", pWord);
                    dr2 = cmd2.ExecuteReader();
                    while (dr2.Read())
                    {
                        Session["uid"] = dr2.GetValue(0);
                        Session["uName"] = dr2.GetValue(1);
                        Session["isAdmin"] = dr2.GetValue(2);
                        break;
                    }
                    Session["cs"] = cs;
                    Response.Redirect("AuthMain.aspx");

                }
            }
        }
    }
}