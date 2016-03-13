using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agriculture_RainyCrops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if( RiceInfo.Text=="")
        {
            RiceInfo.Text = "Rice production in India is an important part of the national economy. Dry productive Paddy Fields in South India is one of the world's largest producers of white rice and brown rice, accounting for 20% of all world rice production. Rice is India's pre-eminent crop, and is the staple food of the people of the eastern and southern parts of the country.Production increased from 53.6 million tons in FY 1980 to 74.6 million tons in year 1990, a 39 percent increase over the decade. By year 1992, rice production had reached 181.9 kg, second in the world only to China with its 182 kg.Since 1950 the increase has been more than 350 percent. Most of this increase was the result of an increase in yields; the number of hectares increased only 0 percent during this period. Yields increased from 1,336 kilograms per hectare in FY 1980 to 1,751 kilograms per hectare in FY 1990. The per-hectare yield increased more than 262 percent between 1950 and 1992.";
            RiceInfo.Text += "<br>" + "Rice is one of the chief grains of India. Moreover, this country has the largest area under rice cultivation, as it is one of the principal food crops. It is in fact the dominant crop of the country. India is one of the leading producers of this crop. Rice is the basic food crop and being a tropical plant, it flourishes comfortably in hot and humid climate. Rice is mainly grown in rain fed areas that receive heavy annual rainfall. That is why it is fundamentally a kharif crop in India. It demands temperature of around 25 degree Celsius and above and rainfall of more than 100 cm.";
        }
        else { RiceInfo.Text = "";}
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (MaizeInfo.Text == "")
        {
            MaizeInfo.Text = "Maize Cultivation in India: Conditions, Production and Distribution!";
            MaizeInfo.Text += "<br>" + "Maize is an inferior grain which is used both as food and fodder. Its grain provides food and is used for obtaining starch and glucose. Its stalk is fed to cattle.";
            MaizeInfo.Text += "Conditions of Growth:" + "<br>";
            MaizeInfo.Text += "Maize can be grown under varied climatic and soil conditions.Maize is mainly a rainfed kharif crop which is sown just before the onset of monsoon and is harvested after retreat of the monsoon. In Tamil Nadu it is a rabi crop and is sown a few weeks before the onset of winter rainy season in Sept. and Oct. It requires 50-100 cm of rainfall and it cannot be grown in areas of more than 100 cm rainfall. In areas of lesser rainfall, the crop is irrigated. For example, more than half of the maize area in Punjab and Karnataka is irrigated. Long dry spell during the rainy season is harmful for maize. Sunshine after showers is very useful for maize. Cool and dry weather helps in ripening of the grain. This crop usually grows well under temperatures varying from 21°C to 27°C, although it can tolerate temperatures as high as 35°C. Frost is injurious to maize and this crop is grown only in those areas where there are about four and a half frost free months in a year. Fertile well-drained alluvial or red loams free from coarse materials and rich in nitrogen are the best soils for its successful growth. Well drained plains are best suited for its cultivation, although it grows in some hilly areas also. The cultivation of maize in India is characterised by inter-culture i.e. along with and in pulses, vegetables and oil seeds.";
        }
        else { MaizeInfo.Text = ""; };
    }
}