using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person p1 = new Person();
            Person p2 = new Person();

            p1.Name = "Sally Brown";
            p1.Age = 20;
            p1.EyeColor = "Blue";
            lblPerson1.Text = p1.Name + " is " + p1.Age.ToString() + " years old and has " + p1.EyeColor + " eyes.";


            p2.Name = "John Smith";
            p2.Age = 24;
            p2.EyeColor = "Brown";
            lblPerson2.Text = p2.Name + " is " + p2.Age.ToString() + " years old and has " + p2.EyeColor + " eyes.";



        }
    }
}