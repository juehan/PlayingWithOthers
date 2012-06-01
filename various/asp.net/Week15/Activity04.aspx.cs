using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activity04 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Label lblTempTitle;
        lblTempTitle = (Label)e.Item.FindControl("lblTitle");
        lblWish.Text += lblTempTitle.Text + "<br/>";
    }
}