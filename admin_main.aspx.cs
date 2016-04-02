using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class admin_main : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    String file_1 = "";
    static int[] shuffle_arr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        if (!IsPostBack)
        {
            shuffle_arr = Array_Shuffle();
            drawDialPad(ref shuffle_arr);
        }
    }

    protected int[] Array_Shuffle()
    {
        Random x = new Random();

        int i, t1 = 0, t2 = 0, temp = 0;
        int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        for (i = 0; i <= 20; i++)
        {
            t1 = x.Next(0, 9);
            t2 = x.Next(0, 9);
            temp = arr[t2];
            arr[t2] = arr[t1];
            arr[t1] = temp;
        }
        return arr;
    }
    protected void drawDialPad(ref int[] arr)
    {
        ib1.ImageUrl = "~/images/icon/" + (arr[0] + 48) + ".bmp";
        ib2.ImageUrl = "~/images/icon/" + (arr[1] + 48) + ".bmp";
        ib3.ImageUrl = "~/images/icon/" + (arr[2] + 48) + ".bmp";
        ib4.ImageUrl = "~/images/icon/" + (arr[3] + 48) + ".bmp";
        ib5.ImageUrl = "~/images/icon/" + (arr[4] + 48) + ".bmp";
        ib6.ImageUrl = "~/images/icon/" + (arr[5] + 48) + ".bmp";
        ib7.ImageUrl = "~/images/icon/" + (arr[6] + 48) + ".bmp";
        ib8.ImageUrl = "~/images/icon/" + (arr[7] + 48) + ".bmp";
        ib9.ImageUrl = "~/images/icon/" + (arr[8] + 48) + ".bmp";
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[3].ToString());
        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[0].ToString());
        }
    }
   
    protected void Password_type(String val)
    {
        String text = "";
        TextBox_Pass.TextMode = TextBoxMode.SingleLine;
        TextBox_Pass.Text += val;
        TextBox_Pass.DataBind();
        text = TextBox_Pass.Text;
        TextBox_Pass.TextMode = TextBoxMode.Password;
        TextBox_Pass.Attributes.Add("value", text);

        TextBox_RePass.TextMode = TextBoxMode.SingleLine;
        TextBox_RePass.Text += val;
        TextBox_RePass.DataBind();
        text = TextBox_RePass.Text;
        TextBox_RePass.TextMode = TextBoxMode.Password;
        TextBox_RePass.Attributes.Add("value", text);

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[1].ToString());
        }
    }
    protected void ib3_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[2].ToString());
        }
    }
    protected void ib5_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[4].ToString());
        }
    }
    protected void ib6_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[5].ToString());
        }
    }
    protected void ib7_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[6].ToString());
        }
    }
    protected void ib8_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[7].ToString());
        }
    }
    protected void ib9_Click(object sender, ImageClickEventArgs e)
    {
        if (IsPostBack)
        {
            Password_type(shuffle_arr[8].ToString());
        }
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
        file_1 = TextBox_file_1.Text;
            
        int invalid = 1;
        // Validation
        if (TextBox_Name.Text.Trim().Length == 0)   // Name Validation
        {
            Label1.Visible = true;
            Label1.Text = " Name cannot be left blank.";
            invalid *= 0;
        }
        else
        {
            Label1.Text = "";
            invalid *= 1;
        }
        if (TextBox_Mobile.Text.Trim().Length == 0)   // Mobile Number Validation
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
        if (TextBox_Pass.Text.Trim().Length == 0)   // Password Validation
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
        if (TextBox_RePass.Text.Trim().Length == 0 || TextBox_Pass.Text.Equals(TextBox_RePass.Text) == false)     //  Re-enter Password Validation
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
        if (TextBox_Address.Text.Trim().Length == 0 || TextBox_Address.Text.Trim().Length < 10)      //  Address Validation
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
        if (TextBox_Pin.Text.Trim().Length == 0)   // PIN Validation
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
        if (TextBox_Dob.Text.Trim().Length == 0)   // Date of Birth Validation
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
        if (TextBox_Village.Text.Trim().Length == 0)   // Date of Birth Validation
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
        if (TextBox_District.Text.Trim().Length == 0)   // Date of Birth Validation
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
        if (TextBox_Block.Text.Trim().Length == 0)   // Date of Birth Validation
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
        //if(FileUpload1.HasFile == false && file_1=="")
        
        if (file_1.Equals(""))
        {
            Label14.Text = "Please Upload photo first.";
            invalid *= 0;
        }
        else
        {
            Label14.Text = "";
            TextBox_file_1.Text = "";
            invalid *= 1;
        }
        if (invalid == 1 && antiSqlInjection() == 0)
        {
            String user = TextBox_Mobile.Text + GenderSelect.Value.ElementAt(0).ToString().ElementAt(0);
            SqlCommand com1 = new SqlCommand("insert into user_db values('" + user + "','" + TextBox_Pass.Text +
                "','" + 1 + "','" + TextBox_Name.Text + "','" +
                TextBox_Mobile.Text + "','" + DateTime.ParseExact(TextBox_Dob.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture).ToShortDateString() + "','" +
GenderSelect.Value + "','" + TextBox_Address.Text + "','" + TextBox_Village.Text + "','" +
TextBox_District.Text + "','" + TextBox_Block.Text + "','" + TextBox_Pin.Text + "','" +
DateTime.Now.ToShortDateString() +
"','" + file_1 + "')", conn);
            com1.ExecuteNonQuery();
            Session["UserId"] = user;
            Response.Redirect("Home/home.aspx");
        }
    }

    protected void Button8_Click(object sender, EventArgs e)        //Modify chosen user.
    {
        GridView1.DataBind();
        if (TextBox8.Text.Trim().Length == 0)
            Label9.Text = " Select a user to Modify.";
        else
            Label9.Text = "";
        if (validateUser(TextBox8.Text) == 0)                 // user exist
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
        if (TextBox_Name.Text.Contains("'") || TextBox_Name.Text.Contains("\"") || TextBox_Name.Text.Contains("=") || TextBox_Name.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Mobile.Text.Contains("'") || TextBox_Mobile.Text.Contains("\"") || TextBox_Mobile.Text.Contains("=") || TextBox_Mobile.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Mobile.Text.Contains("'") || TextBox_Mobile.Text.Contains("\"") || TextBox_Mobile.Text.Contains("=") || TextBox_Mobile.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Pass.Text.Contains("'") || TextBox_Pass.Text.Contains("\"") || TextBox_Pass.Text.Contains("=") || TextBox_Pass.Text.Contains(","))
            invalid = 1;
        else if (TextBox_RePass.Text.Contains("'") || TextBox_RePass.Text.Contains("\"") || TextBox_RePass.Text.Contains("=") || TextBox_RePass.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Address.Text.Contains("'") || TextBox_Address.Text.Contains("\"") || TextBox_Address.Text.Contains("=") || TextBox_Address.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Pin.Text.Contains("'") || TextBox_Pin.Text.Contains("\"") || TextBox_Pin.Text.Contains("=") || TextBox_Pin.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Dob.Text.Contains("'") || TextBox_Dob.Text.Contains("\"") || TextBox_Dob.Text.Contains("=") || TextBox_Dob.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Village.Text.Contains("'") || TextBox_Village.Text.Contains("\"") || TextBox_Village.Text.Contains("=") || TextBox_Village.Text.Contains(","))
            invalid = 1;
        else if (TextBox_District.Text.Contains("'") || TextBox_District.Text.Contains("\"") || TextBox_District.Text.Contains("=") || TextBox_District.Text.Contains(","))
            invalid = 1;
        else if (TextBox_Block.Text.Contains("'") || TextBox_Block.Text.Contains("\"") || TextBox_Block.Text.Contains("=") || TextBox_Block.Text.Contains(","))
            invalid = 1;
        return invalid;
    }
    protected void Button9_Click(object sender, EventArgs e)        // Logout Button
    {
        Session.RemoveAll();                        //Clear all Sessions
        Response.Redirect("Home/home.aspx");             //Redirect to home page
    }
    public int validateUser(String val)
    {
        if (antiSqlInjection() == 0)
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
        TextBox_Name.Text = "";
        TextBox_Mobile.Text = "";
        TextBox_Pass.Text = "";
        TextBox_RePass.Text = "";
        TextBox_Address.Text = "";
        TextBox_Village.Text = "";
        TextBox_District.Text = "";
        TextBox_Block.Text = "";
        TextBox_Pin.Text = "";
        TextBox_Dob.Text = "";
        TextBox_file_1.Text = "";
    }
    public void autofill_all_fields(String val)
    {
        SqlCommand com_name = new SqlCommand(" Select name from user_db where user_id='" + val + "'", conn);
        TextBox_Name.Text = com_name.ExecuteScalar().ToString();
        SqlCommand com_mob = new SqlCommand(" Select phone_no from user_db where user_id='" + val + "'", conn);
        TextBox_Mobile.Text = com_mob.ExecuteScalar().ToString();
        SqlCommand com_add = new SqlCommand(" Select address from user_db where user_id='" + val + "'", conn);
        TextBox_Address.Text = com_add.ExecuteScalar().ToString();
        SqlCommand com_village = new SqlCommand(" Select village from user_db where user_id='" + val + "'", conn);
        TextBox_Village.Text = com_village.ExecuteScalar().ToString();
        SqlCommand com_district = new SqlCommand(" Select district from user_db where user_id='" + val + "'", conn);
        TextBox_District.Text = com_district.ExecuteScalar().ToString();
        SqlCommand com_block = new SqlCommand(" Select block from user_db where user_id='" + val + "'", conn);
        TextBox_Block.Text = com_block.ExecuteScalar().ToString();
        SqlCommand com_pin = new SqlCommand(" Select pin from user_db where user_id='" + val + "'", conn);
        TextBox_Pin.Text = com_pin.ExecuteScalar().ToString();
        SqlCommand com_dob = new SqlCommand(" Select dob from user_db where user_id='" + val + "'", conn);
        TextBox_Dob.Text = com_dob.ExecuteScalar().ToString();
    }
    protected void Button11_Click(object sender, EventArgs e)        //Cancel delete Button
    {
        TextBox8.ReadOnly = false;
        TextBox8.Text = "";
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
    protected void Button12_Click(object sender, EventArgs e)   // upload button
    {
        String file = TextBox_Mobile.Text + GenderSelect.Value.ElementAt(0).ToString().ElementAt(0) + Path.GetFileName(FileUpload1.PostedFile.FileName);
        if (FileUpload1.HasFile)
        {
            Label14.Text = "";
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(Server.MapPath("~/images/profile/") + file );
            Image1.ImageUrl = "images/profile/" + file;
            file_1 = file;
           
            TextBox_file_1.Text = "~/images/profile/" + file_1;
         //   Label14.Text = "file uploaded";
            //   Label14.Text = file_1;
            //if (file != "")
             //Response.Redirect("Education/FirstPage.aspx");
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