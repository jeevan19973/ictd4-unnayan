using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   try
        {
            Boolean errorx = false;
            details.Text = "Upload details";

            if (Uploadim.HasFile == false)
            {
                Response.Write("Please upload a file");
            }

            else
            {
                if (Uploadim.FileBytes.Length / (1024 * 1024) > 200.0)
                {
                    Response.Write("file size exceeded");
                    errorx = true;
                }
                if (errorx == false)
                {
                    details.Text = string.Format(
                                @"Filename : {0} </br>
                                  FileSize : {1} </br>
                                  FileType : {2} </br>", Uploadim.FileName, Uploadim.FileBytes.Length / (1024 * 1024),
                                                               Uploadim.PostedFile.ContentType);
                    string filepath = Server.MapPath("~/Upload images/" + Uploadim.FileName);
                    Uploadim.SaveAs(filepath);

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UploadInfoConnectionString"].ConnectionString);
                    conn.Open();
                    string uploadinp = "Insert into [upload] (Name,Description,uploadpath) values(@a,@b,@c)";

                    SqlCommand com = new SqlCommand(uploadinp, conn);

                    com.Parameters.AddWithValue("@a", Uploadim.FileName);
                    com.Parameters.AddWithValue("@b", "jeevan");
                    com.Parameters.AddWithValue("@c", filepath);
                    com.ExecuteNonQuery();
                    conn.Close();
                }

            }
        }
        catch(Exception ev)
        {Response.Write(ev);
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("watch videos.aspx");
    }
}