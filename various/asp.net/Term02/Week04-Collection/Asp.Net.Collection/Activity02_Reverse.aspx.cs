using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net.Collection
{
    public partial class Activity02_Reverse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] animalArray = new string[5];

            animalArray[0] = "Dog";
            animalArray[1] = "Cat";
            animalArray[2] = "Elephant";
            animalArray[3] = "Lion";
            animalArray[4] = "Cat";

            //set the data source for the list box and bind the data to it
            lbOriginal.DataSource = animalArray;
            lbOriginal.DataBind();

            //reverse the array
            Array.Reverse(animalArray);

            //set the data source for the list box and bind the data to it
            lbReverse.DataSource = animalArray;
            lbReverse.DataBind();

            //Sort array
            Array.Sort(animalArray);

            //set the data source for the list box and bind the data to it
            lbSorted.DataSource = animalArray;
            lbSorted.DataBind();


        }
    }
}