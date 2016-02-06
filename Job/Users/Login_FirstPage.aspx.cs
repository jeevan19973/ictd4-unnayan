using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Job_Users_Login_FirstPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
            Response.Redirect("UserJobProfile.aspx");
    }


    protected void Button_Login_Click(object sender, EventArgs e)
    {
        Label_Error.Visible = false;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        try
        {
            String find_query = "SELECT count(*) from Job_UserData where username = @Usn and password = @Pass";
            conn.Open();
            SqlCommand comm = new SqlCommand(find_query, conn);
            comm.Parameters.AddWithValue("@Usn", TextBox_Username.Text);
            comm.Parameters.AddWithValue("@Pass", TextBox_Password.Text);
            if (comm.ExecuteScalar().ToString().Equals("1"))
            {
                Session["Username"] = TextBox_Username.Text;
                Response.Redirect("~/Job/Users/WelcomeUser.aspx");
            }
            else
                Label_Error.Visible = true;
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

    protected void Button_Fishing_Click(object sender, EventArgs e)
    {
        String skill = "Fishing";
        findUserfrom_SkillsDatabase(skill);


    }
    protected void Button_Handicraft_Click(object sender, EventArgs e)
    {
        String skill = "Handicraft";
        findUserfrom_SkillsDatabase(skill);
    }
    protected void Button_Farming_Click(object sender, EventArgs e)
    {
        String skill = "Farming";
        findUserfrom_SkillsDatabase(skill);
    }
    protected void Button_Teaching_Click(object sender, EventArgs e)
    {
        String skill = "Teaching";
        findUserfrom_SkillsDatabase(skill);
    }
    protected void Button_Weaving_Click(object sender, EventArgs e)
    {
        String skill = "Weaving";
        findUserfrom_SkillsDatabase(skill);
    }
    protected void findUserfrom_SkillsDatabase(String skill)
    {
        SqlDataReader rdr = null;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            //String choose_query = "Select Username FROM Skills where skill = @Skill";
            String select_query = "SELECT Job_UserData.Username,Job_UserData.Village,Job_UserData.Contact,Job_UserData.Address FROM Skills JOIN Job_UserData ON Skills.Username = Job_UserData.Username where Skill = @Skill";
            conn.Open();
            SqlCommand comm = new SqlCommand(select_query, conn);
            comm.Parameters.AddWithValue("@Skill", skill);
            GridView_UserData.DataSource = comm.ExecuteReader();
            GridView_UserData.DataBind();

        }
        catch (Exception insertError)
        {
            Response.Write(insertError.ToString());
        }
        finally
        {

            if (rdr != null)
                rdr.Close();
            if (conn != null)
                conn.Close();

        }
    }
    protected void Button_Advertise_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Job/Users/AdvertiserInfo.aspx");
    }
    protected void Button_CareerAdvice_Click(object sender, EventArgs e)
    {
        Response.Redirect("CareerAdvice.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Registration is required only for villagers who are looking for jobs and not for advertisers
        Response.Redirect("~/Job/Register_Job.aspx");
    }
}