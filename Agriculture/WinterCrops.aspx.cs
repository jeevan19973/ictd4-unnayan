using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Net;

public partial class Agriculture_WinterCrops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (WheatInfo.Text == "")
        {
            WheatInfo.Text = "Wheat Cultivation in India: Conditions, and Distribution!" + "<br>" + "Next to rice, wheat is the most important food-grain of India and is the staple food of millions of Indians, particularly in the northern and north-western parts of the country. It is rich in proteins, vitamins and carbohydrates and provides balanced food. India is the fourth largest producer of wheat in the world after Russia, the USA and China and accounts for 8.7 per cent of the world’s total production of wheat." + "<br>" + "<br>" + "Conditions of Growth:";
            WheatInfo.Text += "Conditions of growth for wheat are more flexible than those of rice. In contrast to rice, wheat is a rabi crop which is sown in the beginning of winter and is harvested in the beginning of summer. The time of sowing and harvesting differs in different regions due to climatic variations. The sowing of wheat crop normally begins in the September-October in Karnataka, Maharashtra, Andhra Pradesh, Madhya Pradesh and West Bengal; October-November in Bihar, Uttar Pradesh, Punjab, Haryana and Rajasthan and Nov.-Dee. In Himachal Pradesh and Jammu & Kashmir. The harvesting is done in Jan.- Feb. in Karnataka, Andhra Pradesh, M.P., and in West Bengal; March-April in Punjab, Haryana, U.P. and Rajasthan and in April-May in Himachal Pradesh and J&K. The growing period is variable from one agro climatic zone to other that effects the vegetative and reproductive period leading to differences in potential yield. The important factors affecting the productivity are seeding time and methodology, crop establishment and climatic conditions during the growing season.";
        }
        else { WheatInfo.Text = ""; }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (BarleyInfo.Text == "")
        {
            BarleyInfo.Text = "Barley, a member of the grass family, is a major cereal grain grown in temperate climates globally. It was one of the first cultivated grains, particularly in Eurasia as early as 13,000 years ago. Barley has also been used as animal fodder, as a source of fermentable material for beer and certain distilled beverages, and as a component of various health foods. It is used in soups and stews, and in barley bread of various cultures. Barley grains are commonly made into malt in a traditional and ancient method of preparation.";
            BarleyInfo.Text += "<br>" + "Barley is a widely adaptable crop. It is currently popular in temperate areas where it is grown as a summer crop and tropical areas where it is sown as a winter crop. Its germination time is one to three days. Barley grows under cool conditions, but is not particularly winter hardy.";
            BarleyInfo.Text += "<br>" + "Barley is more tolerant of soil salinity than wheat, which might explain the increase of barley cultivation in Mesopotamia from the second millennium BCE onwards. Barley is not as cold tolerant as the winter wheats, winter triticale, but may be sown as a winter crop in warmer areas of Australia and Great Britain.";
        }
        else { BarleyInfo.Text = ""; }

    }
}