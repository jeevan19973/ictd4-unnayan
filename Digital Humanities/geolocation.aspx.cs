using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections;

public partial class Digital_Humanities_geolocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected string GetMarkers()
    {
        string markers = "";
        using (SqlConnection con = new
        SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("SELECT Latitude, Longitude, City FROM Locations", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;

            while (reader.Read())
            {
                if (i != 0) markers += ",";
                i++;
                markers +=
                @"{
position: new google.maps.LatLng(" + reader["Latitude"].ToString() + ", " +
                reader["Longitude"].ToString() + ")," +
                @"map: map, title: '" + reader["City"] + "'}";
            }
        }
        return markers;
    }
}