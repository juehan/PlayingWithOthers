using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections; //HashTable

namespace Asp.Net.Collection
{
    public partial class Activity05_HashTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1. Create empty Hash Table (simillar to std::map)
            Hashtable ht = new Hashtable();

            //2. fill it with key/value pair
            ht["UK"] = "United Kingdom";
            ht["US"] = "United States";
            ht["DE"] = "Germany";

            //3. Unless it's post back page (called by other page)
            // which meaning is opens by itself 
            if (Page.IsPostBack == false)
            {
                //4. iterate over Hash table
                //  each item in hash table is DictionaryEntry object
                foreach (DictionaryEntry it in ht)
                {
                    //5. fill in drop down list with List item object
                    ListItem l = new ListItem();
                    l.Text = (string)it.Value; //casting required as Value will return Object
                    l.Value = (string)it.Key;

                    ddlCountry.Items.Add(l);

                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = ddlCountry.SelectedValue;
        }
    }
}