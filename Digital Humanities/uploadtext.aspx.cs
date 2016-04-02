using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class uploadtext : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            Label l2 = new Label();
            Label1.Text = "";
            l2.Text = DateTime.Now.ToString();
             SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
             conn.Open();
             if (TextBox1.Text == null || TextBox1.Text == "") { Response.Write("Please share your thoughts"); }
             else
             {
            string insert = "INSERT INTO [uptext] (Dateandtime,blogdata) VALUES (@date,@blog)";
             SqlCommand comm = new SqlCommand(insert, conn);
             comm.Parameters.AddWithValue("@date", l2.Text);
             comm.Parameters.AddWithValue("@blog", TextBox1.Text);
             comm.ExecuteNonQuery();
             }
             string output = "SELECT * FROM [uptext] ";
             SqlCommand comm2 = new SqlCommand(output, conn);
             SqlDataReader datareader = comm2.ExecuteReader();
             while(datareader.Read())
             {
                 Label1.Text += datareader["Dateandtime"].ToString() + "<br />" + "<br />";
                 Label1.Text += datareader["blogdata"].ToString() + "<br /> " + "<br />";
             }

             datareader.Close();
             conn.Close();
           

        
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}