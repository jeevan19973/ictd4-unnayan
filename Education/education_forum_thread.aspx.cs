using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Education_education_forum_thread : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void postQuestion_Click(object sender, EventArgs e)
    {
        string forumId = Session["forumId"].ToString();
        int cforumId = Convert.ToInt32(forumId);
        string comment = TextBox1.Text;
        string name = TextBox2.Text;
        DateTime date = DateTime.Now;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            String insert_query = "INSERT into Thread VALUES (@ForumId,@Comment,@PosterName,@DateTim)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@ForumId", cforumId);
            comm.Parameters.AddWithValue("@Comment", comment);
            comm.Parameters.AddWithValue("@PosterName", name);
            comm.Parameters.AddWithValue("@DateTim", date);
            comm.ExecuteNonQuery();

     

        }
        catch (Exception insertError)
        {
            Response.Write(insertError.ToString());
        }
        finally
        {

            if (conn != null)
                conn.Close();
        }
    }
}