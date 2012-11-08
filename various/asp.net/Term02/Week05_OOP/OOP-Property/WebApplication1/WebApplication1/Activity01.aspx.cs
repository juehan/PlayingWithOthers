using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Student s = new Student();

            s.FirstName = txtFName.Text;
            s.LastName = txtLName.Text;
            s.StudentNumber = txtSName.Text;

            lblMessage.Text = s.FirstName + " " + s.LastName + " " + s.StudentNumber;

        }
    }
}