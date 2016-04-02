using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        StartUpLoad();
    }
    private void StartUpLoad()
    {
        //get the file name of the posted image
        string imgName = FileUpload1.FileName;
        //sets the image path
        string imgPath = "FileStorage/" + imgName;
        //get the size in bytes that
        int imgSize = FileUpload1.PostedFile.ContentLength;
        //validates the posted file before saving
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            // 10240 KB means 10MB, You can change the value based on your requirement
            if (FileUpload1.PostedFile.ContentLength > 999999999)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

            }
            else
            {//then save it to the Folder
                FileUpload1.SaveAs(Server.MapPath(imgPath));
                Image1.ImageUrl = "~/" + imgPath;
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File saved!')", true);

            }
        }
    }
}