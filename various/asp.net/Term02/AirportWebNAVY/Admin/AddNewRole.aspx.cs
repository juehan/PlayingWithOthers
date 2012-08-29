using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security; //for Roles


public partial class Admin_AddNewRole : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddRole_Click(object sender, EventArgs e)
    {
        Roles.CreateRole(txtRoleName.Text);
        btnAddRole.Text = String.Empty;
    }
}