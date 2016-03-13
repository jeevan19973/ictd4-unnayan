using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CropsInSeasons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Summer_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SummerCrops.aspx");
    }
    protected void Winter_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("WinterCrops.aspx");
    }
    protected void Rainy_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RainyCrops.aspx");
    }
}