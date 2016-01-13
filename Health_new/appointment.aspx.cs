using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Validator())
        {
            Response.Write("<script>alert('Your details have been recorded');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }

    protected bool Validator()
    {
        bool name = false;
        bool age = false;
        bool sex = false;
        bool address = false;
        bool mobno = false;

        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";

        if (TextBox1.Text == "")
        {
            Label2.Text = "*Name field must not be left empty";
        }
        else
            name = true;
        if (TextBox2.Text == "")
        {
            Label3.Text = "*Age field must not be left empty";
        }
        else
            age = true;
        if (TextBox3.Text == "")
        {
            Label4.Text = "*Sex field must not be left empty";
        }
        else
            sex = true;
        if (TextBox4.Text == "")
        {
            Label5.Text = "*Address field must not be left empty";
        }
        else
            address = true;
        if (TextBox5.Text == "")
        {
            Label6.Text = "*Mobile No. field must not be left empty";
        }
        else
            mobno = true;

        return name && age && sex && address && mobno;
    }
}