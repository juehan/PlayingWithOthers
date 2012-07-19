using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juehanlee
{
    public partial class Activity3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            //prepare empty string for facility
            string strFacilities = string.Empty;

            //loop for constructing facilities.
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                    strFacilities += li.Text + "<br/>";
            }

            //display output result
            lblFinished.Text = string.Format("Thank you {0} {1} <br/>"+
                                            "Your details are: <br/>" +
                                            "Phone:{2} <br/>"+
                                            "Email:{3} <br/>"+ 
                                            "Address:{4} <br/>"+
                                            "Date of stay: {5} <br/>"+
                                            "Length of stay: {6} <br/>"+
                                            "Number of people staying: {7} <br/>"+
                                            "Type of room: {8} <br/>" +
                                            "Facilities: {9} <br/>",
                                            
                                            txtFname.Text, txtLname.Text,
                                            txtContactNumber.Text, 
                                            txtEmail.Text, 
                                            txtAddress.Text,
                                            Calendar1.SelectedDate.ToShortDateString(),
                                            txtStayLength.Text,
                                            txtNumOfPeople.Text,
                                            DropDownList1.SelectedItem.Text,
                                            strFacilities);
        }
    }
}