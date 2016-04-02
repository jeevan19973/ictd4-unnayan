using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uploadProbs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/healthServices/nearBySel.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/healthServices/hospitalsSel.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/healthServices/form.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Camera unavailable')</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Camera unavailable')</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Scanning unavailable')</script>");

    }
}