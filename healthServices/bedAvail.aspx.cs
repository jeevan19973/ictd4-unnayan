using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bedAvail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random r = new Random();
        Label1.Text = "" + r.Next(1, 20);
        Label2.Text = "" + r.Next(1, 20);
        Label3.Text = "" + r.Next(1, 20);
        Label4.Text = "" + r.Next(1, 20);
        Label5.Text = "" + r.Next(1, 20);
    }
}