using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hospitalsSel : System.Web.UI.Page
{
    string[] strA = { "Doctors:\nName: Dr.Chakraborthy Ms.\nName: Dr.Asho kumar Md., Ms. \nName: Dr.Omprakash Md.",
                           "Doctors:\n Name: Dr.Priyanka Tripaty Ms.\nName: Dr.Anil Adhya Md., Ms. \nName: Dr.Naveen Kumar Md.",
                           "Doctors:\n Name: Dr.Prolay Das Ms.\nName: Dr.Ashok sinha Md., Ms. \nName: Dr.Nirmal Kumar Md.",
                           "Doctors:\n Name: Dr.Anupam Bhattacharya Ms.\nName: Dr.Manu Sharma Md., Ms. \nName: Dr.Pratyay Garg Md.",
                           "Doctors:\n Name: Dr.Chaitanya Ms.\nName: Dr.Ram Prasad Md., Ms. \nName: Dr.Abhinav Varma Md.",

                        };
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = strA[DropDownList1.SelectedIndex];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Your Problems have been submitted')</script>");
    }
}