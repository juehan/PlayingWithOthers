using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace beforeTest
{
    public partial class studentBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            int iNumber = -1;
            bool result = Int32.TryParse(txtNumber.Text, out iNumber);
            if(!result)
            {
                lblOutput.Text = "Please give number. No text is allowed";
                return;
            }            
            if (iNumber > 20)
            {
                lblOutput.Text = "Too big number, try with number below 20";
            }
            else
            {
                lblOutput.Text = "";
                for (int i = 0; i < iNumber; i++)
                {
                    lblOutput.Text += string.Format("{0} Name: <br/>", i + 1);
                }
            }
        }
    }
}