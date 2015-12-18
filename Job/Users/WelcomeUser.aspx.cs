﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Job_Users_WelcomeUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
            Label_Username.Text = Session["Username"].ToString();
        else
            Response.Redirect("Login_FirstPage.aspx");
    }
}