using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace WebApplication1
{
    public partial class Activity01_InteractWithStudentClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Student s = new Student();

            s.strFirstName = txtFName.Text;
            s.strLastName = txtLName.Text;
            s.strStudentName = txtSNumber.Text;
                
            
            string strLable = s.strFirstName + " " + s.strLastName+ " " + s.strStudentName;

            lblMessage.Text = strLable;

        }
    }
}