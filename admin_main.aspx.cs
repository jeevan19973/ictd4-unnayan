using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
public partial class admin_main : System.Web.UI.Page
{
   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
   String file_1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       // if (Session["id"] == null)                      //If not logged in Redirect to homepage.
           // Response.Redirect("home.aspx");
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)        // Add user Option
    {
        //Initialization of Module
        
        if (Panel7.Visible == true)
            Panel7.Visible = false;
        if (Panel5.Visible == false)
            Panel5.Visible = true;
        Label8.Text = "Add User";   
    }
    protected void Button2_Click(object sender, EventArgs e)   // Modify user Option
    {
        if (Panel7.Visible == false)
            Panel7.Visible = true;
        if (Panel5.Visible == true)
            Panel5.Visible = false;
        //if (Button8.Visible == false)
            Button8.Visible = true;
        if (Button5.Visible == true)
            Button5.Visible = false;
        Label10.Text = "Select user to Modify";
    }
    protected void Button3_Click(object sender, EventArgs e)            // Delete user Option
    {
        if (Panel5.Visible == true)
            Panel5.Visible = false;
        if (Panel7.Visible == false)
            Panel7.Visible = true;
        if (Button8.Visible == true)
            Button8.Visible = false;
        //if (Button5.Visible == false)
            Button5.Visible = true;
        Label10.Text = "Select user to Delete";
    }
    protected void Button7_Click(object sender, EventArgs e)            // Add/Modify Option Close Button
    {
        if (Panel7.Visible == true)
            Panel7.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)            // Modify/Delete Option Close Button
    {
        if (Panel5.Visible == true)
            Panel5.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)            // Delete Button            
    {
        if (TextBox8.Text.Trim().Length == 0)
            Label9.Text = " Select a user to Delete.";
        else
            Label9.Text = "";
        if (validateUser(TextBox8.Text) == 0)                 // user exist
            {
                TextBox8.ReadOnly = true;
                Button5.Visible = false;
                Button7.Visible = false;
                Button10.Visible = true;
                Button11.Visible = true;
            }
    }
    protected void Button4_Click(object sender, EventArgs e)            // Modify Button
    {
        int invalid = 1;
        // Validation
        if (TextBox1.Text.Trim().Length == 0)   // Name Validation
        {
            Label1.Visible = true;
            Label1.Text = " Name cannot be left blank.";
            invalid*=0;
        }
        else
        {
            Label1.Text = "";
            invalid*=1;
        }
        if (TextBox2.Text.Trim().Length == 0)   // Mobile Number Validation
        {
            Label2.Visible = true;
            Label2.Text = " Mobile Number cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label2.Text = "";
            invalid *= 1;
        }
        if (TextBox3.Text.Trim().Length == 0)   // Password Validation
        {
            Label3.Visible = true;
            Label3.Text = " Password cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label3.Text = "";
            invalid *= 1;
        }
        if (TextBox4.Text.Trim().Length == 0 || TextBox3.Text.Equals(TextBox4.Text) == false)     //  Re-enter Password Validation
        {
            Label4.Visible = true;
            Label4.Text = " Passwords doesn't match";
            invalid *= 0;
        }
        else
        {
            Label4.Text = "";
            invalid *= 1;
        }
        if (TextBox5.Text.Trim().Length == 0 || TextBox5.Text.Trim().Length < 10)      //  Address Validation
        {
            Label5.Visible = true;
            Label5.Text = " A cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label5.Text = "";
            invalid *= 1;
        }
        if (TextBox6.Text.Trim().Length == 0)   // PIN Validation
        {
            Label6.Visible = true;
            Label6.Text = " PIN cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label6.Text = "";
            invalid *= 1;
        }
        if (TextBox7.Text.Trim().Length == 0)   // Date of Birth Validation
        {
            Label7.Visible = true;
            Label7.Text = " Date of Birth cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label7.Text = "";
            invalid *= 1;
        }
        if (TextBox9.Text.Trim().Length == 0)   // Date of Birth Validation
        {
            Label11.Visible = true;
            Label11.Text = " Village cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label11.Text = "";
            invalid *= 1;
        }
        if (TextBox10.Text.Trim().Length == 0)   // Date of Birth Validation
        {
            Label12.Visible = true;
            Label12.Text = " District cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label12.Text = "";
            invalid *= 1;
        }
        if (TextBox11.Text.Trim().Length == 0)   // Date of Birth Validation
        {
            Label13.Visible = true;
            Label13.Text = " Block cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label13.Text = "";
            invalid *= 1;
        }
        if(FileUpload1.HasFile == false && file_1=="")
            {
                Label14.Text = "Please Upload photo first.";
                invalid *= 0;
            }
        else
            {
                Label14.Text = "";
                invalid *= 1;
            }
        if(invalid == 0 && antiSqlInjection() == 0)
            {
                String user = TextBox2.Text + GenderSelect.Value.ElementAt(0).ToString().ElementAt(0);
                SqlCommand com1 = new SqlCommand("insert into user_db values('" + user + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + GenderSelect.Value + "','" + TextBox5.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox6.Text + "','" + DateTime.Today.Date + "','" + file_1+ "')", conn);
                com1.ExecuteNonQuery();
            }
    }

    protected void Button8_Click(object sender, EventArgs e)        //Modify chosen user.
    {
        GridView1.DataBind();
        if (TextBox8.Text.Trim().Length == 0)
            Label9.Text = " Select a user to Modify.";
        else
            Label9.Text = "";
        if (validateUser(TextBox8.Text)==0)                 // user exist
            {
                reset_all_fields();
                autofill_all_fields(TextBox8.Text);
            }

        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox8.Text = GridView1.SelectedRow.Cells[1].Text;
    }
    protected int antiSqlInjection()
        {
            int invalid = 0;
            if (TextBox1.Text.Contains("'") || TextBox1.Text.Contains("\"") || TextBox1.Text.Contains("=") || TextBox1.Text.Contains(","))
                invalid = 1;
            else if (TextBox2.Text.Contains("'") || TextBox2.Text.Contains("\"") || TextBox2.Text.Contains("=") || TextBox2.Text.Contains(","))
                invalid = 1;
            else if (TextBox2.Text.Contains("'") || TextBox2.Text.Contains("\"") || TextBox2.Text.Contains("=") || TextBox2.Text.Contains(","))
                invalid = 1;
            else if (TextBox3.Text.Contains("'") || TextBox3.Text.Contains("\"") || TextBox3.Text.Contains("=") || TextBox3.Text.Contains(","))
                invalid = 1;
            else if (TextBox4.Text.Contains("'") || TextBox4.Text.Contains("\"") || TextBox4.Text.Contains("=") || TextBox4.Text.Contains(","))
                invalid = 1;
            else if (TextBox5.Text.Contains("'") || TextBox5.Text.Contains("\"") || TextBox5.Text.Contains("=") || TextBox5.Text.Contains(","))
                invalid = 1;
            else if (TextBox6.Text.Contains("'") || TextBox6.Text.Contains("\"") || TextBox6.Text.Contains("=") || TextBox6.Text.Contains(","))
                invalid = 1;
            else if (TextBox7.Text.Contains("'") || TextBox7.Text.Contains("\"") || TextBox7.Text.Contains("=") || TextBox7.Text.Contains(","))
                invalid = 1;
            else if (TextBox9.Text.Contains("'") || TextBox9.Text.Contains("\"") || TextBox9.Text.Contains("=") || TextBox9.Text.Contains(","))
                invalid = 1;
            else if (TextBox10.Text.Contains("'") || TextBox10.Text.Contains("\"") || TextBox10.Text.Contains("=") || TextBox10.Text.Contains(","))
                invalid = 1;
            else if (TextBox11.Text.Contains("'") || TextBox11.Text.Contains("\"") || TextBox11.Text.Contains("=") || TextBox11.Text.Contains(","))
                invalid = 1;
            return invalid;
        }
    protected void Button9_Click(object sender, EventArgs e)        // Logout Button
    {
        Session.RemoveAll();                        //Clear all Sessions
        Response.Redirect("home.aspx");             //Redirect to home page
    }
    public int validateUser(String val)
        {
            if(antiSqlInjection()==0)
                {
                    SqlCommand check = new SqlCommand(" Select Count(*) from user_db where user_id='" + val + "'", conn);
                    if ((int)check.ExecuteScalar() == 1)
                        return 0;
                    else
                        return 1;
                }
            return 1;
        }
    public void reset_all_fields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    public void autofill_all_fields(String val)
        {
             SqlCommand com_name = new SqlCommand(" Select name from user_db where user_id='" + val + "'", conn);
             TextBox1.Text = com_name.ExecuteScalar().ToString();
             SqlCommand com_mob = new SqlCommand(" Select phone_no from user_db where user_id='" + val + "'", conn);
             TextBox2.Text = com_mob.ExecuteScalar().ToString();
             SqlCommand com_add = new SqlCommand(" Select address from user_db where user_id='" + val + "'", conn);
             TextBox5.Text = com_add.ExecuteScalar().ToString();
             SqlCommand com_village = new SqlCommand(" Select village from user_db where user_id='" + val + "'", conn);
             TextBox9.Text = com_village.ExecuteScalar().ToString();
             SqlCommand com_district = new SqlCommand(" Select district from user_db where user_id='" + val + "'", conn);
             TextBox10.Text = com_district.ExecuteScalar().ToString();
             SqlCommand com_block = new SqlCommand(" Select block from user_db where user_id='" + val + "'", conn);
             TextBox11.Text = com_block.ExecuteScalar().ToString();
             SqlCommand com_pin = new SqlCommand(" Select pin from user_db where user_id='" + val + "'", conn);
             TextBox6.Text = com_pin.ExecuteScalar().ToString();
             SqlCommand com_dob = new SqlCommand(" Select dob from user_db where user_id='" + val + "'", conn);
             TextBox7.Text = com_dob.ExecuteScalar().ToString();
        }
    protected void Button11_Click(object sender, EventArgs e)        //Cancel delete Button
    {
        TextBox8.ReadOnly = false;
        TextBox8.Text="";
        Button5.Visible = true;
        Button7.Visible = true;
        Button10.Visible = false;
        Button11.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)          //confirm Delete
    {
        Response.Write(" lolwa");
        TextBox8.ReadOnly = false;
        Label9.Text = "User Deleted Sucessfuly";
        SqlCommand com_confirm = new SqlCommand(" Delete from user_db where user_id='" + TextBox8.Text + "'", conn);
        com_confirm.ExecuteNonQuery();
        TextBox8.Text = "";
        GridView1.DataBind();
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {

    }
    protected void Button5_Click2(object sender, EventArgs e)
    {


    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        String file = "pic"+file_name().ToString();
        if (FileUpload1.HasFile)
        {
            Label14.Text = "";
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(Server.MapPath("~/uploads/photo/") + file + "." + "jpg");
            Image1.ImageUrl = "uploads/photo/" + file + ".jpg";
            file_1 = file;
        }
        else
        {
            Label14.Text = " Upload picture first";
            file = "";
            file_1 = "";
        }
    }
   protected int file_name()
        {
            Random x = new Random();
            return (x.Next(100000, 500000));
        }
}