using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ind_disease : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Server.MapPath("~/uploads")+FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(filename);
            Response.Write("<script>alert('Your File has been Submitted Succesfully..Wait for verification ');</script>");
        }
        else
            Response.Write("<script>alert('No file choosen');</script>");

    }
}