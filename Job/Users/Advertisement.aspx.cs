using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Job_Users_Advertisement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                //String choose_query = "Select Username FROM Skills where skill = @Skill";
                String select_query = "SELECT * FROM Advertisers";
                conn.Open();
                SqlCommand comm = new SqlCommand(select_query, conn);

                GridView_Advertisements.DataSource = comm.ExecuteReader();
                GridView_Advertisements.DataBind();

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

    protected void Button_Fishing_Click(object sender, EventArgs e)
    {
        String skill = "Fishing";
        findAdvertiserfrom_AdvertisersDatabase(skill);


    }
    protected void Button_Handicraft_Click(object sender, EventArgs e)
    {
        String skill = "Handicraft";
        findAdvertiserfrom_AdvertisersDatabase(skill);
    }
    protected void Button_Farming_Click(object sender, EventArgs e)
    {
        String skill = "Farming";
        findAdvertiserfrom_AdvertisersDatabase(skill);
    }
    protected void Button_Teaching_Click(object sender, EventArgs e)
    {
        String skill = "Teaching";
        findAdvertiserfrom_AdvertisersDatabase(skill);
    }
    protected void Button_Weaving_Click(object sender, EventArgs e)
    {
        String skill = "Weaving";
        findAdvertiserfrom_AdvertisersDatabase(skill);
    }
    protected void findAdvertiserfrom_AdvertisersDatabase(String skill)
    {
        SqlDataReader rdr = null;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            //String choose_query = "Select Username FROM Skills where skill = @Skill";
            String select_query = "SELECT * FROM Advertisers  where Skills LIKE @Skill";
            conn.Open();
            SqlCommand comm = new SqlCommand(select_query, conn);
            //THIS IS VERY IMPORTANT : HOW TO USE PARAMETRIZED QUERY WITH LIKE
            comm.Parameters.AddWithValue("@Skill", "%" + skill + "%");
            GridView_Advertisements.DataSource = comm.ExecuteReader();
            GridView_Advertisements.DataBind();

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
}