using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Job_Users_UserJobProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
            Label_Username.Text = Session["Username"].ToString();
        else
            Response.Redirect("Login_FirstPage.aspx");
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataReader rdr = null;
            try
            {
                String select_query = "SELECT SKill FROM Skills where Username = @Usn";
                conn.Open();
                SqlCommand comm = new SqlCommand(select_query, conn);
                comm.Parameters.AddWithValue("@Usn", Session["Username"].ToString());
                rdr = comm.ExecuteReader();
                while (rdr.Read())
                {
                    Label_SkillsSet.Text = Label_SkillsSet.Text + rdr["Skill"].ToString() + " ";
                }

            }
            catch (Exception insertError)
            {
                Response.Write(insertError.ToString());
            }
            finally
            {
                if (rdr != null)
                {
                    rdr.Close();
                }
                if (conn != null)
                    conn.Close();
            }
        }
    }

    protected void Button_Fishing_Click(object sender, EventArgs e)
    {
        String skill = "Fishing";
        addSkillTo_SkillsDatabase(skill);
        

    }
    protected void Button_Handicraft_Click(object sender, EventArgs e)
    {
        String skill = "Handicraft";
        addSkillTo_SkillsDatabase(skill);
    }
    protected void Button_Farming_Click(object sender, EventArgs e)
    {
        String skill = "Farming";
        addSkillTo_SkillsDatabase(skill);
    }
    protected void Button_Teaching_Click(object sender, EventArgs e)
    {
        String skill = "Teaching";
        addSkillTo_SkillsDatabase(skill);
    }
    protected void Button_Weaving_Click(object sender, EventArgs e)
    {
        String skill = "Weaving";
        addSkillTo_SkillsDatabase(skill);
    }
    protected void addSkillTo_SkillsDatabase(String skill)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
      //  Label_AlreadyExists.Visible = false;
        if (Label_SkillsSet.Text.Contains(skill))
        {
            try
            {
                String insert_query = "DELETE FROM Skills WHERE Username = @Usn And Skill = @Skill";
                conn.Open();
                SqlCommand comm = new SqlCommand(insert_query, conn);
                comm.Parameters.AddWithValue("@Usn", Session["Username"].ToString());
                comm.Parameters.AddWithValue("@Skill", skill);
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
                Label_SkillsSet.Text = Label_SkillsSet.Text.Replace(skill,"");
            }
            return;
        }
       
        try
        {
            String insert_query = "INSERT into Skills VALUES (@Usn,@Skill)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@Usn", Session["Username"].ToString());
            comm.Parameters.AddWithValue("@Skill", skill);
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
            Label_SkillsSet.Text = Label_SkillsSet.Text + skill + " ";
        }
    }
    protected void Button_Logout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("Login_FirstPage.aspx");
    }
    
}