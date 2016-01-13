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
       
        Response.Redirect("seasonal.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("diseases.aspx");
    }



    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string path = DropDownList2.SelectedValue.ToString() + ".aspx";
        DropDownList2.SelectedIndex = 0;
        Redirect("ind_hosp.aspx");
       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string path = DropDownList1.SelectedValue.ToString() + ".aspx";
        DropDownList1.SelectedIndex = 0;
        Redirect("ind_hosp.aspx");


    }
    protected void Redirect(string path)
    {
        Response.Redirect(path);
    }
}