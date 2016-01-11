using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Education_Test_Choices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //if (Language.Text.Equals("English") && Class.Text.Equals("4"))
            Response.Redirect("~/Education/SampleTest.aspx");
    }
}