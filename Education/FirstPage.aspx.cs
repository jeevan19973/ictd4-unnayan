using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Education_FirstPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void Button_StudySchool_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.ncert.nic.in/ncerts/textbook/textbook.htm");
    }
    protected void Button_JobSkills_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Education/JobSkills.aspx");
    }
    protected void Button_Question_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Education/Question_Answer.aspx");
    }
    protected void Button_Test_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Education/Test_Choices.aspx");
    }
    
}