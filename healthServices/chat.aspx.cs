using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/healthServices/images/call1.jpg";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/healthServices/images/call2.jpg";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
            string temp = TextBox1.Text;
            TextBox1.Text = temp + "\nMe:>" + TextBox2.Text;
            TextBox2.Text = "";
        
    }

  
}