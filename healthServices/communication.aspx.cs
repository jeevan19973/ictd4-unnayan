﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class communication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["personId"] = 1;
        Response.Redirect("~/healthServices/chat.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["personId"] = 2;
        Response.Redirect("~/healthServices/chat.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["personId"] = 3;
        Response.Redirect("~/healthServices/chat.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["personId"] = 4;
        Response.Redirect("~/healthServices/chat.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["personId"] = 5;
        Response.Redirect("chat.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["personId"] = 6;
        Response.Redirect("chat.aspx");
    }
}