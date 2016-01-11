using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Education_SampleTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String[] answers = { "Energy", "Waves", "Frequency", "Air" };
        String[] choices = { RadioButtonList1.Text, RadioButtonList2.Text, RadioButtonList3.Text, RadioButtonList4.Text };
        int countRight = 0;
        int countWrong = 0;
        for (int i = 0; i < 4; i++)
            if (answers[i].Equals(choices[i]))
                countRight++;
            else
                countWrong++;
        Output.Text = "Correct Answers : " + countRight + "\n Wrong Answers : " + countWrong;

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}