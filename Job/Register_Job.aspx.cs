using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Job_Register_Job : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
            Response.Redirect("Users/WelcomeUser.aspx");
    }

    protected void Button_RegForm_Submit_Click(object sender, EventArgs e)
    {
        Label_Usn.Visible = false;
        if (checkDupUser())
        {
            Label_Usn.ForeColor = System.Drawing.Color.Red;
            Label_Usn.Visible = true;
            return;
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            String insert_query = "INSERT into Job_UserData VALUES (@Usn,@Pass,@Village,@Contact,@Address)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@Usn", TextBox_Usn.Text);
            comm.Parameters.AddWithValue("@Pass", TextBox_Pass.Text);
            comm.Parameters.AddWithValue("@Village", TextBox_Village.Text);
            comm.Parameters.AddWithValue("@Contact", TextBox_Contact.Text);
            comm.Parameters.AddWithValue("@Address", TextBox_Address.Text);
            comm.ExecuteNonQuery();
            Session["UserName"] = TextBox_Usn.Text;
            /*insert_query = "INSERT into Skills VALUES (@Usn,@Occupation)";
            comm.CommandText = insert_query;
            comm.Parameters.AddWithValue("@Occupation", TextBox_Occupation.Text);
            comm.ExecuteNonQuery();
            */
            Response.Redirect("Users/WelcomeUser.aspx");
            
           
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

    protected Boolean checkDupUser()
    {
        String ifExists = null;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            String find_query = "SELECT count(*) from Job_UserData where lower(username) = lower(@Usn)";
            conn.Open();
            SqlCommand comm = new SqlCommand(find_query, conn);
            comm.Parameters.AddWithValue("@Usn", TextBox_Usn.Text);
            ifExists = comm.ExecuteScalar().ToString();
        }
        catch (Exception insertError)
        {
            Response.Write(insertError.ToString());
        }
        finally
        {
            if (conn != null)
                conn.Close();
            if (ifExists == null)
            {
                Response.Redirect("Register_Job.aspx");
            }
        }

        if (ifExists.Equals("0"))
            return false;
        else
            return true;
    }




   /* protected void Button_Delete(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String delete_query = "Delete from Job_UserData";
        conn.Open();
        SqlCommand comm = new SqlCommand(delete_query, conn);
        comm.ExecuteNonQuery();
        conn.Close();
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Job/Users/Login_FirstPage.aspx");
    }
}