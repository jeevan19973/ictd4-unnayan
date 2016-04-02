using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        Response.Redirect("~/health_new/seasonal.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("~/health_new/diseases.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/healthServices/home.aspx");

    }
}