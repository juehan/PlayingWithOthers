using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Activity03_AddMethod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person p = new Person("Black");
            
            p.Name = "Sally Brown";
            p.Age = 20;

            lblPerson.Text = p.Name + " is " + p.Age.ToString() + " years old and has " + p.EyeColor + " eyes";

            lblWalk.Text = p.Walk();
        }
    }
}