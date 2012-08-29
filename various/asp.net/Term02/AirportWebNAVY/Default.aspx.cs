using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtFirstName.Text = Profile.FirstName;
            txtLastName.Text = Profile.LastName;
            txtCity.Text = Profile.Address.City;
            txtStreet.Text = Profile.Address.Street;
            txtPostCode.Text = Profile.Address.PostCode;
            lblLastVisit.Text = Profile.LastVisit.ToString();

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Profile.FirstName = txtFirstName.Text;
        Profile.LastName = txtLastName.Text;        

        Profile.Address.Street = txtStreet.Text;
        Profile.Address.City = txtCity.Text;
        Profile.Address.PostCode = txtPostCode.Text;
        Profile.LastVisit = DateTime.Now;
        Profile.Save();
    }
}