using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace beforeTest
{
    public partial class checkboxlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblOutput.Text = string.Empty;

            foreach (ListItem l in CheckBoxList1.Items)
            {
                if (l.Selected)
                    lblOutput.Text += l.Text + "<br/>";
            }
        }
    }
}