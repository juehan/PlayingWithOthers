using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace beforeTest
{
    public partial class MagazineSubscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string strMagazines=string.Empty;

            foreach (ListItem li in ChksubscriptList.Items)
            {
                if(li.Selected)
                    strMagazines +=li.Text + "<br/>";
            }

            lblFinished.Text = string.Format("Thank you {0} {1} <br/> Your details are: <br/>" +
                                            "Phone:{2} <br/> Email:{3} <br/> Address:{4} <br/>" +
                                            "Lengh Of subscription:{5} <br/> Subscription(s):<br/>{6}",  
                                            txtFirstName.Text, txtLastName.Text, 
                                            txtContactNumber.Text, txtEmail.Text, txtAddress.Text,
                                            DropDownList1.SelectedItem.Text, strMagazines);
        }
    }
}