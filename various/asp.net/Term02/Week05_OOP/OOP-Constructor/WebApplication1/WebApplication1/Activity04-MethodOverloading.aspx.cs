using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity04_MethodOverloading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person p = new Person();


            p.Name = "John Lee";

            //method overloading
            lblWalkInt.Text = p.Walk(100);

            lblWalkString.Text = p.Walk("Back");

            lblWalkNone.Text = p.Walk();

        }
    }
}