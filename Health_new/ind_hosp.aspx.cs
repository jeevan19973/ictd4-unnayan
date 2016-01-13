using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ind_hosp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random r = new Random();
        Label3.Text = ""+(int)(r.NextDouble()*10);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/health_new/appointment.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/health_new/appointment.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/health_new/appointment.aspx");

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/health_new/appointment.aspx");

    }
}