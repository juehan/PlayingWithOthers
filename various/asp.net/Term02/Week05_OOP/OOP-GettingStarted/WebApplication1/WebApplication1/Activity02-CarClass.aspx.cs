using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity02_CarClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Car c = new Car();
            
            c._color = txtColor.Text;
            c._make = txtMake.Text;
            c._model = txtModel.Text;
            c._year = Convert.ToInt32(txtYear.Text);

            lblOutput.Text = c._color + " colored " + Convert.ToSingle(c._year) + " maden " + c._make + " " + c._model;
        }
    }
}