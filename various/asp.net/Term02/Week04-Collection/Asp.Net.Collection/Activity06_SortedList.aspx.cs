using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections; //SortedList

namespace Asp.Net.Collection
{
    public partial class Activity06_SortedList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.Create empty Sorted List
            SortedList sl = new SortedList();

            //2. Fill in it
            sl["armadillo"] = "any of a family ... small bony plates";
            sl["amaryllis"] = "an autum flowering ... Hippeastrum or Sprekelia";
            sl["zebra"] = "any of several fleet ... white or buff";
            sl["artichoke"] = "a tall composite herb ... cooked as a vegetable";

            //3. Unless it's PostPack Page open request
            if (Page.IsPostBack == false)
            {
                //4. Iterate over SortedList 
                foreach (DictionaryEntry it in sl)
                {
                    //5. Retrieve value
                    ListItem l = new ListItem();
                    l.Text = (string)it.Key;
                    l.Value = (string)it.Value;

                    //6. Fill in drop down list control
                    ddlWords.Items.Add(l);
                }


            }
        }

        //7. If submit button pressed, change the text of label
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = ddlWords.SelectedValue;
        }
    }
}