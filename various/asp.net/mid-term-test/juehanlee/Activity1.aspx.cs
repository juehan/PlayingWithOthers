using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juehanlee
{
    public partial class Activity1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //number to store user input
            int iNumber = -1;

            //try parse user input
            bool result = Int32.TryParse(TextBox1.Text, out iNumber);

            //if user input is not number, display warning message
            if (!result)
            {
                lblOutput.Text = "Please give number. No text is allowed";
                return;
            }
            //if user input is too big to be displayed, display warning message
            if (iNumber > 30) // arbitarily set this number to 30.
            {
                lblOutput.Text = "Too big number, try with number below 30";
                return;
            }
            
            //if everything is okay, process as requirement
            lblOutput.Text = "";
            for (int i = 0; i < iNumber; i++)
            {
                lblOutput.Text += string.Format("This is the {0} loop iteration<br/>", i + 1);
            }

            
        }
    }
}