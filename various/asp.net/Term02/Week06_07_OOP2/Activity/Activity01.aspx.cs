using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Activity01 : System.Web.UI.Page
{
    List<string> _list = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        _list.Add("Tom Cruise");
        _list.Add("Brad Pitt");
        _list.Add("Julia Robert");
        _list.Add("Angelina Jolie");
        _list.Add("Jennifer Aniston");
        _list.Add("Tom Hanks");
        _list.Add("Jonny Depp");
        _list.Add("Cameron Diaz");
        _list.Add("Adam Sandler");
        _list.Add("Will Smith");
        _list.Add("Ben Stiller");
        _list.Add("Reese Witherspoon");
    }

    //build up list of names from input list
    protected string buildUpNames(List<string> _list)
    {
        string result = "";
        
        foreach (string str in _list)
        {
            result = result + str;
            result = result + "<br>";
        }
        return result;
    }

    //when display button pressed
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblText.Text = buildUpNames(_list);
    }

    //when Sort button pressed
    protected void btnSort_Click(object sender, EventArgs e)
    {
        List<string> copy = _list;
        copy.Sort();
        
        lblText.Text = buildUpNames(copy);
    }
    
    //when save to file button pressed
    protected void btnSaveToFile_Click(object sender, EventArgs e)
    {
        StreamWriter sw = File.CreateText(MapPath("movie_star.txt"));

        foreach (string str in _list)
        {
            sw.WriteLine(str);
        }              
        
        sw.Close();
        lblText.Text = "Written to 'movie_star.txt' file";
    }
}