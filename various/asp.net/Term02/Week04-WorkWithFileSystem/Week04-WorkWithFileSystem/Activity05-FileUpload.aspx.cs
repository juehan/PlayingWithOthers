using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week04_WorkWithFileSystem
{
    public partial class Activity05_FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string strFileToUpload = fulFileUp.FileName;
            string strPath = Server.MapPath(strFileToUpload);

            fulFileUp.PostedFile.SaveAs(strPath);

        }
    }
}