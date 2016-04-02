using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Education_education_forum_thread : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SELECT ,Forum.forumId, Forum.question, Forum.dateTim FROM Forum INNER JOIN user_db ON Forum.user_id = user_db.user_id WHERE (Forum.titleId = @titleId)
    }

    protected void postQuestion_Click(object sender, EventArgs e)
    {
        string forumId = Session["forumId"].ToString();
        int cforumId = Convert.ToInt32(forumId);
        string comment = TextBox1.Text;
        string name = TextBox2.Text;
        DateTime date = DateTime.Now;
        //SELECT Thread.threadId Thread.answer, Thread.dateTim FROM Thread INNER JOIN user_db ON Thread.user_id = user_db.user_id WHERE (Forum.titleId = @titleId)
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            String insert_query = "INSERT into Thread VALUES (@ForumId,@Comment,@UserId,@DateTim)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@ForumId", cforumId);
            comm.Parameters.AddWithValue("@Comment", comment);
            comm.Parameters.AddWithValue("@UserId", Session["UserId"].ToString());
            comm.Parameters.AddWithValue("@DateTim", date);
            comm.ExecuteNonQuery();
            GridView1.DataBind();
     

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