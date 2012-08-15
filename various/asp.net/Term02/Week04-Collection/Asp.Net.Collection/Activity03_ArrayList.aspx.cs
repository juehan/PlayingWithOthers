using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections; //ArrayList

namespace Asp.Net.Collection
{
    public partial class Activity03_ArrayList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1. Create ArrayList which is better than just array
            ArrayList al = new ArrayList();

            //2. use Add method to push back to array
            al.Add("Dog");
            al.Add("Cat");
            al.Add("Elephant");
            al.Add("Lion");
            al.Add("Cat");

            //3. You can add whatever data type into ArrayList.
            // It does not need to be same data type
            al.Add(1);
            al.Add(new Object());
            al.Add(3.141592);   

            //4. put ArrayList into ListBox control as a data source and bind it
            lbOriginal.DataSource = al;
            lbOriginal.DataBind();
        
        
        }
    }
}