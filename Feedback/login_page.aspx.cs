using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    static int[] shuffle_arr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        if (!IsPostBack)
        {
            shuffle_arr=Array_Shuffle();
            drawDialPad(ref shuffle_arr);
        }
    }
   
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        if(IsPostBack)
        {
            Password_type(shuffle_arr[3].ToString());
        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        if(IsPostBack)
            {
                Password_type(shuffle_arr[0].ToString());
            }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Attributes.Add("value", "");
    }
    protected void Password_type(String val)
        {
            String text = "";
            TextBox2.TextMode = TextBoxMode.SingleLine;
            TextBox2.Text += val;
            TextBox2.DataBind();
            text= TextBox2.Text;
            TextBox2.TextMode = TextBoxMode.Password;
            TextBox2.Attributes.Add("value", text);
            }
    protected int[] Array_Shuffle()
    {
        Random x = new Random();
        
        int i, t1 = 0, t2 = 0, temp = 0;
        int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        for(i=0;i<=20;i++)
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int invalid = 1;
        if (TextBox1.Text == "")
        {
            invalid *= 0;
            Label1.Text = "ID cannot be blank";
        }
        else
        {
            invalid *= 1;
            Label1.Text = "";
        }
        if (TextBox2.Text == "")
        {
            invalid *= 0;
            Label2.Text = "Password cannot be blank";
        }
        else
        {
            invalid *= 1;
            Label2.Text = "";
        }
        if(invalid == 1 && antiSqlInjection()==0)
            {
                String pass = "", nameval = "";   
                SqlCommand check = new SqlCommand(" Select password from user_db where user_id='" + TextBox1.Text + "'", conn);
                SqlCommand getname = new SqlCommand(" Select name from user_db where user_id='" + TextBox1.Text + "'", conn);
                
                pass=check.ExecuteScalar().ToString().Trim();
                nameval = getname.ExecuteScalar().ToString().Trim();
                
                
                if(pass.Equals(TextBox2.Text))
                    {
                        Session["service"] = "pass";
                        Session["name"] = nameval;
                        Response.Redirect(Session["service_name"].ToString());
                        
                    }
            }
       
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
        return invalid;
    }
}