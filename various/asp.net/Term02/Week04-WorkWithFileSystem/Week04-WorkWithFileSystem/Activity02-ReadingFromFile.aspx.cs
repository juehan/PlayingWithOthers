using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //StreamReader

namespace Week04_WorkWithFileSystem
{
    public partial class Activity02_ReadingFromFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            string filename = MapPath("activity1_file.txt");

            if (File.Exists(filename))
            {
                StreamReader sReader = File.OpenText(filename);

                // StreamReader::ReadLine() returns the next line from the input stream, 
                // or null if the end of the input stream is reached.
                string strInput = sReader.ReadLine();
                
                while (strInput != null)
                {
                    lblContents.Text += strInput + "<br/>";
                    strInput = sReader.ReadLine();

                }
                sReader.Close();
            }
            else
            {
                lblContents.Text = "activity1_file.txt does not exist";

            }

        }
    }
}