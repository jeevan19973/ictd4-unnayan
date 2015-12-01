using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;

public partial class watch_videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Upload images/"));
        FileInfo[] file = dir.GetFiles();
        ArrayList list = new ArrayList();
        foreach (FileInfo file2 in file)
        {
            if (file2.Extension == ".mp4")
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
}