using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace beforeTest
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void imgNext_Click(object sender, ImageClickEventArgs e)
        {
            string path = "~/images/";
            switch (MultiView1.ActiveViewIndex)
            {
                case 0: 
                    MultiView1.SetActiveView(vDelivery);
                    imgContactDetail.ImageUrl = path + "contactDetailsDone.gif";
                    imgNext.ImageUrl = path + "nextBlue.gif";
                    break;
                case 1: 
                    MultiView1.SetActiveView(vPayment);
                    imgDelivery.ImageUrl = path + "deliveryDone.gif";
                    imgNext.ImageUrl = path + "nextRed.gif";
                    break;
                case 2: 
                    MultiView1.SetActiveView(vConfirm);
                    imgPayment.ImageUrl = path + "paymentDone.gif";
                    imgNext.ImageUrl = path + "done.gif";

                    lblConfirm.Text = string.Format("Thank you<br/><br/>{0}{1}<br/>{2}<br/>Details:{3}",
                                                txtFirstName.Text, 
                                                txtLastName.Text,
                                                txtAddress.Text,
                                                txtEmail.Text);
                    break;
                case 3: 
                    imgConfirm.ImageUrl = path + "confirmDone.gif";
                    break;
                default:
                    //can't be here
                    break;
            }
        }

        
    }
}