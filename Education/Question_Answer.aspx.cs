using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Education_Question_Answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridviewData();
        }
    }
    // Bind Gridview Data
    private void BindGridviewData()
    {
        
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from FileInformation";
                cmd.Connection = con;
                con.Open();
                gvDetails.DataSource = cmd.ExecuteReader();
                gvDetails.DataBind();

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }
    }

    // Save files to Folder and files path in database
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
        Stream str = fileUpload1.PostedFile.InputStream;
        BinaryReader br = new BinaryReader(str);
        Byte[] size = br.ReadBytes((int)str.Length);
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into FileInformation(FileName,FileType,FileData,Keyword,Comments) values(@Name,@Type,@Data,@Keyword,@Comments)";
                cmd.Parameters.AddWithValue("@Name", filename);
                cmd.Parameters.AddWithValue("@Type", "application/word");
                cmd.Parameters.AddWithValue("@Data", size);
                cmd.Parameters.AddWithValue("@Keyword", Keyword.Text);
                cmd.Parameters.AddWithValue("@Comments", Comments.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                BindGridviewData();
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }
    }
    // This button click event is used to download files from gridview
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        int fileid = Convert.ToInt32(gvDetails.DataKeys[gvrow.RowIndex].Value.ToString());
        string name, type;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select FileName, FileType, FileData from FileInformation where Id=@Id";
                cmd.Parameters.AddWithValue("@id", fileid);
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.ContentType = dr["FileType"].ToString();
                    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + dr["FileName"] + "\"");
                    Response.BinaryWrite((byte[])dr["FileData"]);
                    Response.End();
                }
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }
    }
}