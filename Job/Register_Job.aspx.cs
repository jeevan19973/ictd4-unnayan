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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Job_Registration_ConnectionString"].ConnectionString);
        try
        {
            String insert_query = "INSERT into Job_UserData VALUES (@Usn,@Pass,@Village,@Contact,@Address,@Occupation)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@Usn", TextBox_Usn.Text);
            comm.Parameters.AddWithValue("@Pass", TextBox_Pass.Text);
            comm.Parameters.AddWithValue("@Village", TextBox_Village.Text);
            comm.Parameters.AddWithValue("@Contact", TextBox_Contact.Text);
            comm.Parameters.AddWithValue("@Address", TextBox_Address.Text);
            comm.Parameters.AddWithValue("@Occupation", TextBox_Occupation.Text);
            comm.ExecuteNonQuery();
            Response.Write("Registration successfull");
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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Job_Registration_ConnectionString"].ConnectionString);
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
            if(ifExists == null)
            {
                Response.Redirect("Register_Job.aspx");
            }
        }

        if (ifExists.Equals("0"))
            return false;
        else
            return true;
    }
   
    protected void TextBox_Usn_TextChanged(object sender, EventArgs e)
    {
       /* RequiredFieldValidator_Usn.Validate();
        Label_Usn.Text = "";
        int i = 1;
        Response.Write("Text cahnged" + i++);
        string constr = ConfigurationManager.ConnectionStrings["Job_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select count(*) from Job_UserData where lower(username) = lower(@Usn)", con);
        //your code will not work, if you have in database UserName = "login", but user write it as "Login", because your sql-query is case sensitive
        cmd.Parameters.AddWithValue("@Usn", TextBox_Usn.Text);
        if (TextBox_Usn.Text != "")
         {
            bool is_exists = false;
            try
            {
                con.Open();
                is_exists = (int)cmd.ExecuteScalar() == 0 ? false : true;
            }
            catch (Exception ex)
            {
                //if you will work with exceptions. But they will not be =)
            }
            finally
            {
                con.Close();
            }
            if (is_exists)
            {
                Label_Usn.Text = "This UserName is already exists. Please Choose another one";
                this.Label_Usn.ForeColor = System.Drawing.Color.Red;

                TextBox_Usn.Focus();
            }
            else
            {
                Label_Usn.Text = "UserName is Available";
                this.Label_Usn.ForeColor = System.Drawing.Color.Red;
            }
        }
        */

    }
}