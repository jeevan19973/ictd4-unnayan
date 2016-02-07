using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Malaria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Health_new/p_malaria"));
        FileInfo[] file = dir.GetFiles();
        ArrayList list = new ArrayList();
        foreach (FileInfo file2 in file)
        {
            if (file2.Extension == ".mp3")
            {
                list.Add(file2);
            }
        }
        DataList1.DataSource = list;
        DataList1.DataBind();

        dir = new DirectoryInfo(MapPath("~/Health_new/d_malaria"));
        file = dir.GetFiles();
        list = new ArrayList();
        foreach (FileInfo file2 in file)
        {
            if (file2.Extension == ".mp3")
            {
                list.Add(file2);
            }
        }
        DataList2.DataSource = list;
        DataList2.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Server.MapPath("~/uploads") + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(filename);
            Response.Write("<script>alert('Your File has been Submitted Succesfully..Wait for verification ');</script>");
        }
        else
            Response.Write("<script>alert('File not choosen !!! ');</script>");

    }
}