using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //create a new student object
        Student s = new Student();

        //add a new student
        int numRowsAffected = s.AddStudent(txtFname.Text, txtLname.Text, txtAddress.Text, txtEmail.Text);

        //display confirmation message
        if (numRowsAffected > 0)
        {
            lblMessage.Text = "New student added";
            lblMessage.CssClass = "confirmation";

        }
        else
        {
            lblMessage.Text = "Faild to add new student";
            lblMessage.CssClass = "error";
        }

    }
}