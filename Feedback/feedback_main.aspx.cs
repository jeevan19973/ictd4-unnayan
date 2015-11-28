using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    //int val; 
    int invalid = 0;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
            Response.Redirect("login_page.aspx");
        conn.Open();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("media_text.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("media_video.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("media_audio.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("media_photo.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text.Length < 250)
        {
            Label1.Text = "Maximum Text Limit is 250.";
        }
        else if (antiSqlInjection() == 0)
        {
            Label1.Text = "";
            if (!PhotoUpload.HasFile)
            {
                invalid += 1;
            }
            if (!VideoUpload.HasFile)
            {
                invalid += 1;
            }
            if (!AudioUpload.HasFile)
            {
                invalid += 1;
            }
            if (invalid == 3 && TextBox1.Text.Trim() == "")      // No Contents
            {
                Label1.Text = " Nothing to Upload.";
            }
            else
            {
                Label1.Text = "";
            }
        }
        if(recipient.Text.Trim().Length!=0 && invalid <3)
            {
                SqlCommand check = new SqlCommand("Select Count(*) from user_db where phone_no='"+recipient.Text+"'",conn);
                int phone = (int)check.ExecuteScalar();
                String temp = (phone + 100001).ToString(),pic="",aud="",vid="";
                if(phone == 1)     // Phone exist
                    {
                        if(PhotoUpload.HasFile)
                            {
                                pic = "pic" + temp + ".jpg";
                                PhotoUpload.SaveAs(Server.MapPath("~/uploads/feed"+pic));
                            }
                        else
                            {
                                pic = "";
                            }
                        if (VideoUpload.HasFile)
                            {
                                vid = "vid" + temp + ".3gp";
                                VideoUpload.SaveAs(Server.MapPath("~/uploads/feed" + vid));
                            }
                        else
                            {
                                pic = "";
                            }
                        if(AudioUpload.HasFile)
                            {
                                aud = "aud" + temp + ".amr";
                                AudioUpload.SaveAs(Server.MapPath("~/uploads/feed" + aud));
                            }
                        else
                            {
                                aud = "";
                            }
                        SqlCommand enter = new SqlCommand("Insert into feed_db(user_id,recipient_id,pic_id,text,vid_id,aud_id) values('" + temp + "'" + recipient.Text.Trim() + "'" + pic + "'" + vid+ "'" + aud+ "')", conn);
                        enter.ExecuteNonQuery();
                        Label1.Text = " Mail Sent Successfully";
                    }
                else         // invalid phone number
                    {
                        Label1.Text = " No user Found.";
                    }
                
               // SqlCommand enter = new SqlCommand("Insert into feed_db'" + recipient.Text + "'", conn);
            }
    }
    protected int antiSqlInjection()
    {
        int invalid = 0;
        if (TextBox1.Text.Contains("'") || TextBox1.Text.Contains("\"") || TextBox1.Text.Contains("=") || TextBox1.Text.Contains(","))
            invalid = 1;
        else if (recipient.Text.Contains("'") || recipient.Text.Contains("\"") || recipient.Text.Contains("=") || recipient.Text.Contains(","))
            invalid = 1;
        return invalid;
    }
}