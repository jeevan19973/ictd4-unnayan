using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Education_education_forum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void postQuestion_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            String insert_query = "INSERT into Forum VALUES (@TitleId,@Question,@PosterName,@DateTim)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@TitleId", Convert.ToInt32(DropDownList1.Text));
            comm.Parameters.AddWithValue("@Question", TextBox1.Text);
            comm.Parameters.AddWithValue("@PosterName", TextBox2.Text);
            comm.Parameters.AddWithValue("@DateTim", DateTime.Now);
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Int64 ForumId = (Int64)GridView1.SelectedValue;

        Session["forumId"] = ForumId;

        Response.Redirect("education_forum_thread.aspx");
    }
}