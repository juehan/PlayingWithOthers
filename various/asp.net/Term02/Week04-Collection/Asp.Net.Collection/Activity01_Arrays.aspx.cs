using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net.Collection
{
    public partial class Activity01_Arrays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int intCounter = -1;
            string[] animalArray = new string[5];

            animalArray[0] = "Dog";
            animalArray[1] = "Cat";
            animalArray[2] = "Elephant";
            animalArray[3] = "Lion";
            animalArray[4] = "Cat";
            
            do
            {
                intCounter = Array.IndexOf(animalArray, "Cat", intCounter + 1);
                lblMsg.Text += "AnimalArray(" + intCounter.ToString() + ")<br/>";
            } while (intCounter != Array.LastIndexOf(animalArray, "Cat"));
        
        }
    }
}