using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//We add the following reference
using System.Web.Security;



public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreatRole_Click(object sender, EventArgs e)
    {
        string strNewRole = txtNewRole.Text.ToString();

        try
        {
            Roles.CreateRole(strNewRole);

        }
        catch (Exception ex)
        {

        }


    }
}