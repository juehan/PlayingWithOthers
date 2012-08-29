using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//We add the following reference
using System.Web.Security;


//assignment
//Make a web page where admin can create role and 
//no db code is not need, just use text area, button and API
//e.g) Roles.CreateRole("HumanResource");

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //We will assing our newly registered user to the lowest role level. i.e. 'Uer'
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        string strUserName = CreateUserWizard1.UserName.ToString();

        Roles.AddUserToRole(strUserName, "User"); //as a default, give new user with 'User' role.
           


    }
    protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}