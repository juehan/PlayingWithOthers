using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juehanlee
{
    public partial class Activity2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //store user input as a whole string
            string strInput = TextBox1.Text;
            
            //separate each word by some delimeters such as blank, comman, stop, colon and tab.
            string [] split = strInput.Split(new Char[]{' ', ',', '.',':','\t'});
            
            //prepare messages to be printed.
            string message1 = "I see you are studying a web course. That is great you will enjoy it.";
            string message2 = "You may want to think about studying a web course. It is a lot of fun.";

            
            //our search string is the word, web.
            string searchString = "web";

            //assume search keyword is not found yet.
            bool bFound = false;
            
            //iterate separated word to find search keyword
            foreach (string s in split)
            {
                if (s.ToLower() == searchString) //make it lower case as FR.
                {
                    bFound = true;
                }                
            }
            //if it's found, print message1. Otherwise, print message2.
            if(bFound)
                lblOutput.Text = message1;
            else
                lblOutput.Text = message2;
        }
    }
}