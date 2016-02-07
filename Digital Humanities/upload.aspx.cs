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

            if (Uploadim.HasFile == true)
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

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
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
            else if( FileUpload1.HasFile == true)
            {
             if (FileUpload1.FileBytes.Length / (1024 * 1024) > 200.0)
                {
                    Response.Write("file size exceeded");
                    errorx = true;
                }
                if (errorx == false)
                {
                    details.Text = string.Format(
                                @"Filename : {0} </br>
                                  FileSize : {1} </br>
                                  FileType : {2} </br>", FileUpload1.FileName, FileUpload1.FileBytes.Length / (1024 * 1024),
                                                               FileUpload1.PostedFile.ContentType);
                    string filepath = Server.MapPath("~/Upload images/" + FileUpload1.FileName);
                    FileUpload1.SaveAs(filepath);

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string uploadinp = "Insert into [upload] (Name,Description,uploadpath) values(@a,@b,@c)";

                    SqlCommand com = new SqlCommand(uploadinp, conn);

                    com.Parameters.AddWithValue("@a", FileUpload1.FileName);
                    com.Parameters.AddWithValue("@b", "jeevan");
                    com.Parameters.AddWithValue("@c", filepath);
                    com.ExecuteNonQuery();
                    conn.Close();
                }

            }
            else if( FileUpload2.HasFile == true)
            {
                if (FileUpload2.FileBytes.Length / (1024 * 1024) > 200.0)
                {
                    Response.Write("file size exceeded");
                    errorx = true;
                }
                if (errorx == false)
                {
                    details.Text = string.Format(
                                @"Filename : {0} </br>
                                  FileSize : {1} </br>
                                  FileType : {2} </br>", FileUpload2.FileName, FileUpload2.FileBytes.Length / (1024 * 1024),
                                                               FileUpload2.PostedFile.ContentType);
                    string filepath = Server.MapPath("~/Upload images/" + FileUpload2.FileName);
                    FileUpload2.SaveAs(filepath);

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string uploadinp = "Insert into [upload] (Name,Description,uploadpath) values(@a,@b,@c)";

                    SqlCommand com = new SqlCommand(uploadinp, conn);

                    com.Parameters.AddWithValue("@a", FileUpload2.FileName);
                    com.Parameters.AddWithValue("@b", "jeevan");
                    com.Parameters.AddWithValue("@c", filepath);
                    com.ExecuteNonQuery();
                    conn.Close();
                }

            }
            else { Response.Write("Please upload a file."); }
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
    protected void Buttonvid_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.Visible == false)
        {
            FileUpload1.Visible = true;
        }
        else
        {
            FileUpload1.Visible = false;
            FileUpload1.Attributes.Clear();
        }
    }
    protected void Buttonaud_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload2.Visible == false)
        {
            FileUpload2.Visible = true;
        }
        else
        {
            FileUpload2.Visible = false;
            FileUpload2.Attributes.Clear();
        }
    }
    protected void Buttonimg_Click(object sender, ImageClickEventArgs e)
    {
        if(Uploadim.Visible == false)
        {
            Uploadim.Visible = true;
        }
        else
        {
            Uploadim.Visible = false;
            Uploadim.Attributes.Clear();
        }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Digital Humanities/uploadtext.aspx");
    }
}