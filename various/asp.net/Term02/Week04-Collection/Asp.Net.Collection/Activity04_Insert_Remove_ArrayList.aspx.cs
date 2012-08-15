using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections; //ArrayList

namespace Asp.Net.Collection
{
    public partial class Activity04_Insert_Remove_ArrayList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1. create empty ArrayList
            ArrayList al = new ArrayList();

            //2. add element into array list
            al.Add("Dog");
            al.Add("Cat");
            al.Add("Elephant");
            al.Add("Lion");
            al.Add("Cat");
            al.Add("Platypus");

            //3. bind above arrayList to first list box
            lbOriginal.DataSource = al;
            lbOriginal.DataBind();

            //4. change (insert -> remove ->remove)
            al.Insert(1, "Chicken~~~");
            al.Remove("Cat");
            al.RemoveAt(0);

            //5. bind the result into second list box
            lbChanged.DataSource = al;
            lbChanged.DataBind();

        }
    }
}