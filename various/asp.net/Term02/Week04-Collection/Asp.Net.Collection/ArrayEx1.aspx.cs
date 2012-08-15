using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net.Collection
{
    public partial class ArrayEx1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] animalArray = new string[5];

            animalArray[0] = "Dog";
            animalArray[1] = "Cat";
            animalArray[2] = "Elephant";
            animalArray[3] = "Lion";
            animalArray[4] = "Cat";

            lblMessage.Text = "Value of 3rd element     : " + animalArray[2];


        }
    }
}