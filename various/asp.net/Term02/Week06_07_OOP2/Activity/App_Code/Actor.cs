using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Collections;

/// <summary>
/// Summary description for Actor
/// </summary>
public class Actor : Celebrity
{

    private ArrayList Hits;

    private string Genre;

    private int MAX_STRLEN = 50;

    private int MIN_STRLEN = 1;

	public Actor()
	{
	}

    //ListHits returns a string containing all the hits separated by a comma
    public string ListHits()
    {
        string output = "";
        foreach (string str in Hits)
        {
            output = str + ", " + output;
        }
        return output;
    }

    //AddHit – adds a hit to the Hits arrayList. 
    // Each hit is a string between 1 and 50 characters long with no leading or trailing white space
    public void AddHit(string hit)
    {
        string trimedHit = hit.Trim();
        if (trimedHit.Length > MAX_STRLEN || trimedHit.Length < MIN_STRLEN)
        {
            throw new Exception("Each hit is a string between 1 and 50 characters long with no leading or trailing white space");
        }

    }

}