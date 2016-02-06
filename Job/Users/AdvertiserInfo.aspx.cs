using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Job_Users_AdvertiserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button_RegForm_Submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {

            String insert_query = "INSERT into Advertisers VALUES (@Name,@Village,@Contact,@Address,@Skills)";
            conn.Open();
            SqlCommand comm = new SqlCommand(insert_query, conn);
            comm.Parameters.AddWithValue("@Name", TextBox_Usn.Text);
            comm.Parameters.AddWithValue("@Village", TextBox_Village.Text);
            comm.Parameters.AddWithValue("@Contact", TextBox_Contact.Text);
            comm.Parameters.AddWithValue("@Address", TextBox_Address.Text);
            comm.Parameters.AddWithValue("@Skills", Label_SkillsSet.Text);
            comm.ExecuteNonQuery();
           // Session["UserName"] = TextBox_Usn.Text;

            Response.Redirect("~/Job/Users/Advertisement.aspx");
            
           
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
        AddJobsToAdvertiser(skill);


    }
    protected void Button_Handicraft_Click(object sender, EventArgs e)
    {
        String skill = "Handicraft";
        AddJobsToAdvertiser(skill);
    }
    protected void Button_Farming_Click(object sender, EventArgs e)
    {
        String skill = "Farming";
        AddJobsToAdvertiser(skill);
    }
    protected void Button_Teaching_Click(object sender, EventArgs e)
    {
        String skill = "Teaching";
        AddJobsToAdvertiser(skill);
    }
    protected void Button_Weaving_Click(object sender, EventArgs e)
    {
        String skill = "Weaving";
        AddJobsToAdvertiser(skill);
    }
    protected void AddJobsToAdvertiser(String skill)
    {
        //Label_AlreadyExists.Visible = false;
        if (Label_SkillsSet.Text.Contains(skill))
        {
            //Label_AlreadyExists.Visible = true;
            Label_SkillsSet.Text = Label_SkillsSet.Text.Replace(skill,"");
            return;
        }
        Label_SkillsSet.Text = Label_SkillsSet.Text + skill + " ";
        
    }
}
