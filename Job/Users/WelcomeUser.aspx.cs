using System;
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
            Response.Redirect("~/Job/Users/Login_FirstPage.aspx");
    }
    protected void Button_Profile_Click(object sender, EventArgs e)
    {
        //TODO : MAKE THIS PAGE
        Response.Write("Page under construction");
        //Response.Redirect("~/Job/Users/UserProfile.aspx");
    }
    protected void Button_JobApplication_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Job/Users/UserJobProfile.aspx");
    }
   
    protected void Button_Logout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("~/Job/Users/Login_FirstPage.aspx");

    }
}