using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["service"] == null)
        {
            Session["service_name"] = "service_agro.aspx";
            Response.Redirect("login_page.aspx");
            
        }
        if (Session["service"].Equals("pass"))
        {
            Button1.Visible = true;
            Label1.Text = "Welcome "+Session["name"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["service"] = null;
        Session["service_name"] = null;
        Button1.Visible = false;
        Response.Redirect("services_main.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {

    }
}