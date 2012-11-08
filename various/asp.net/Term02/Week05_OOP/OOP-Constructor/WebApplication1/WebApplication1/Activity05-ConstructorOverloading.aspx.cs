using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity05_ConstructorOverloading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person p1 = new Person("Blue");
            Person p2 = new Person();

            p1.Name = "Sally Brown";
            p1.Age = 20;

            lblPerson1.Text = p1.Name;
            lblPerson1.Text += " is " + p1.Age.ToString() + " years old and has ";
            lblPerson1.Text += p1.EyeColor + " eyes";


            p2.Name = "John Smith";
            p2.Age = 24;
            lblPerson2.Text = p2.Name;
            lblPerson2.Text += " is " + p2.Age.ToString() + " years old and has ";
            lblPerson2.Text += p2.EyeColor + " eyes";

                
        }
    }
}