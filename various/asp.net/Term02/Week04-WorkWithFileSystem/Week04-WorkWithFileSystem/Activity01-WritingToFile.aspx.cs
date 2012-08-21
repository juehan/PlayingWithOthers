using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //

namespace Week04_WorkWithFileSystem
{
    public partial class Activity01_WritingToFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            //1.make stream writer object
            StreamWriter sw;

            //2. bind stream writer with physical file
            //      We use CreateText method of File Class        
            sw = File.CreateText(MapPath("activity1_file.txt"));

            //3. get asp.net control's contents and write into stream writer
            sw.WriteLine(txtInput.Text);

            //4. If it's done, close the stream
            sw.Close();
        }
    }
}