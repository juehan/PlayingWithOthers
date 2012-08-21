using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Week04_WorkWithFileSystem
{
    public partial class Activity04_UsingPathClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strPath;

            strPath = Path.GetTempFileName();

            lblOutput.Text = "<p>Created TempFile: " + strPath + "<p/>";

            lblOutput.Text += "<p>The name of the file is: " + Path.GetFileName(strPath) + "</p>";

            lblOutput.Text += "<p>The directory name is: " + Path.GetDirectoryName(strPath) + "</p>";

            lblOutput.Text += "<p>The extension of the file is: " + Path.GetExtension(strPath) + "</p>";

        }
    }
}