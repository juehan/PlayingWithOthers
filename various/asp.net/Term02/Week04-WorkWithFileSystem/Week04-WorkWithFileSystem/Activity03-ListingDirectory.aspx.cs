using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Week04_WorkWithFileSystem
{
    public partial class Activity03_ListingDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvListing.DataSource = Directory.GetFiles(MapPath("."));
            gvListing.DataBind();


            gvList2.DataSource = Directory.GetFiles(MapPath("."), "*.aspx");
            gvList2.DataBind();


        }
    }
}