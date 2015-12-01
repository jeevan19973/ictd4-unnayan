using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;

public partial class showuploadimages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Upload images/"));
        FileInfo[] file = dir.GetFiles();
        ArrayList list = new ArrayList();
        foreach (FileInfo file2 in file)
        {
            if (file2.Extension == ".jpg" || file2.Extension == ".jpeg" || file2.Extension == ".gif" || file2.Extension == ".png")
            {
                list.Add(file2);
            }
        }
        DataList1.DataSource = list;
        DataList1.DataBind();
       
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
}