using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //StreamReader


public partial class Activity02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StreamReader sr = File.OpenText(MapPath("movie_star.txt"));
        string result = "";
        while (!sr.EndOfStream)
        {
            string line = sr.ReadLine();
            result = result + line + "<br>";
        }
        sr.Close();
        lblOutput.Text = result;        

    }
}