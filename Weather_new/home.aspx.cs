using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    String ip;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        ip = Request.UserHostAddress;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ips = "http://geoip.nekudo.com/api/"+ip+"/en";
        try
        {
            HttpWebRequest rqst = (HttpWebRequest)WebRequest.Create(ips);
            rqst.Method = "GET";

            HttpWebResponse resp = (HttpWebResponse)rqst.GetResponse();

            Stream data = resp.GetResponseStream();
            StreamReader reader = new StreamReader(data);

            string dat = reader.ReadToEnd();
          
            string lat = getLatitude(dat);
            string lon = getLongitude(dat);

            string url = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=" + lat + "&lon=" + lon + "&units=metric&cnt=7&mode=json&APPID=967fa00b2838569da3bf47451a64c072";

            rqst = (HttpWebRequest)WebRequest.Create(url);
            rqst.Method = "GET";

            resp = (HttpWebResponse)rqst.GetResponse();

            data = resp.GetResponseStream();
            reader = new StreamReader(data);

            string json = reader.ReadToEnd();
           
            string city1 = GetCity(json);

            string weather_data = json.Substring(json.IndexOf("list") + 7, json.Length - json.IndexOf("list") - 10);
            string temp_data = String.Copy(weather_data);
            double[][] final_data = new double[7][];

            for (int i = 0; i < 7; i++)
            {
                final_data[i] = GetWeatherData(temp_data);
                temp_data = temp_data.Substring((int)final_data[i][3]);
            }
            ChangeUI(final_data);
            Label29.Text = "City: " + city1;
        }
        catch (Exception ex)
        {
            Response.Write(ex.StackTrace);
            Response.Write("<script>alert('Error! Enter valid city name or check your internet conncetion');</script>");
        }

    }
    protected string GetCity(string str)
    {
        int pos = str.IndexOf("name") + 7;
        string str2 = str.Substring(pos, str.Length - pos);
        int pos2 = str2.IndexOf("\"");
        string final = str2.Substring(0, pos2);

        return final;
    }
    protected double[] GetWeatherData(String str)
    {
        string temp = String.Copy(str);
        int pos_final = 0;
        for (int i = 0; i < 3; i++)
        {
            int pos = temp.IndexOf("}");
            pos_final = pos_final + pos + 1;
            temp = temp.Substring(pos + 1);

        }

        string data = str.Substring(0, pos_final);

        double[] result = new double[4];
        result[0] = GetTempMin(data);
        result[1] = GetTempMax(data);
        result[2] = GetWeather(data);
        result[3] = pos_final;

        return result;
    }


    protected double GetTempMin(String str)
    {
        Double min = 0;

        //For mIn
        int pos_min = str.IndexOf("min") + 5;
        string subMin = str.Substring(pos_min);
        string minStr = "";
        for (int i = 0; i < 10; i++)
        {
            if (subMin[i] == ',')
                break;
            minStr = minStr + subMin[i];

        }

        min = double.Parse(minStr);

        return min;
    }
    protected double GetTempMax(String str)
    {
        Double max = 0;

        //For mAx
        int pos_max = str.IndexOf("max") + 5;
        string subMax = str.Substring(pos_max);
        string maxStr = "";
        for (int i = 0; i < 10; i++)
        {
            if (subMax[i] == ',')
                break;
            maxStr = maxStr + subMax[i];

        }

        max = double.Parse(maxStr);

        return max;

    }
    protected int GetWeather(String str)
    {
        int pos = str.IndexOf("main");
        string sub = str.Substring(pos);
        if (sub.Contains("Clear"))
            return 0;
        else if (sub.Contains("Clouds"))
            return 1;
        else if (sub.Contains("Rain"))
            return 2;
        else if (sub.Contains("Snow"))
            return 3;
        else
            return 4;

    }

    protected void ChangeUI(double[][] data)
    {
        DateTime date = DateTime.Today;
        date = date.AddDays(2);

        Label1.Text = "Today";
        Label2.Text = "" + data[0][0] + " °" + 'C';
        Label3.Text = "" + data[0][1] + " °" + 'C';
        SetColumn3(Image1, Label4, data[0][2]);

        Label5.Text = "Tomorrow";
        Label6.Text = "" + data[1][0] + " °" + 'C';
        Label7.Text = "" + data[1][1] + " °" + 'C';
        SetColumn3(Image2, Label8, data[1][2]);

        Label9.Text = date.ToString("dd/MM/yy");
        Label10.Text = "" + data[2][0] + " °" + 'C';
        Label11.Text = "" + data[2][1] + " °" + 'C';
        SetColumn3(Image3, Label12, data[2][2]);
        date = date.AddDays(1);

        Label13.Text = date.ToString("dd/MM/yy");
        Label14.Text = "" + data[3][0] + " °" + 'C';
        Label15.Text = "" + data[3][1] + " °" + 'C';
        SetColumn3(Image4, Label16, data[3][2]);
        date = date.AddDays(1);

        Label17.Text = date.ToString("dd/MM/yy");
        Label18.Text = "" + data[4][0] + " °" + 'C';
        Label19.Text = "" + data[4][1] + " °" + 'C';
        SetColumn3(Image5, Label20, data[4][2]);
        date = date.AddDays(1);

        Label21.Text = date.ToString("dd/MM/yy");
        Label22.Text = "" + data[5][0] + " °" + 'C';
        Label23.Text = "" + data[5][1] + " °" + 'C';
        SetColumn3(Image6, Label24, data[5][2]);
        date = date.AddDays(1);

        Label25.Text = date.ToString("dd/MM/yy");
        Label26.Text = "" + data[6][0] + " °" + 'C';
        Label27.Text = "" + data[6][1] + " °" + 'C';
        SetColumn3(Image7, Label28, data[6][2]);

        Panel1.Visible = true;
    }
    protected void SetColumn3(Image im, Label lb, double val)
    {
        string[] words = { "Sunny", "Cloudy", "Rainy", "Snowy" };

        int i = (int)val;
        string url = "~/Weather_new/images/" + i + ".png";
        im.ImageUrl = url;
        lb.Text = words[i];

    }

    protected string getLatitude(string data)
    {
        int pos_lat = data.IndexOf("latitude") + 10;
        string sublat = data.Substring(pos_lat);
        string latStr = "";
        for (int i = 0; i < 10; i++)
        {
            if (sublat[i] == ',')
                break;
            latStr = latStr + sublat[i];

        }

        return latStr;

    }
    protected string getLongitude(string data)
    {
        int pos_lon = data.IndexOf("longitude") + 11;
        string sublon = data.Substring(pos_lon);
        string lonStr = "";
        for (int i = 0; i < 10; i++)
        {
            if (sublon[i] == ',')
                break;
            lonStr = lonStr + sublon[i];

        }

        return lonStr;
    }
}