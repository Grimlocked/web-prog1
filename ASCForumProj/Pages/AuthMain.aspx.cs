﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASCForumProj.Pages
{
    public partial class AuthMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(Request["msg"]))
            {
                Response.Redirect("ForumPost.aspx");
            }
            else
            {
                mess.Text = Request["msg"];
            }
        }
    }
}