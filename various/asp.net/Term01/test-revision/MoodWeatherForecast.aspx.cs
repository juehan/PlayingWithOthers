using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace beforeTest
{
    public partial class MoodWeather : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            imgMood.ImageUrl = ddMoodList.SelectedValue;
            String strDefault = "Today is going to be ";
            lblOutput.Text = strDefault;
            switch (ddMoodList.SelectedIndex)
            {
                case 0:
                    lblOutput.Text += "a great day";
                    break;
                case 1:
                    lblOutput.Text += "OK";
                    break;
                case 2: 
                    lblOutput.Text += "a slow day";
                    break;
                case 3:
                    lblOutput.Text += "an unusual day";
                    break;
                case 4:
                    lblOutput.Text += "up and down";
                    break;
                default:
                    //can't be here.
                    break;

            }
        }
    }
}