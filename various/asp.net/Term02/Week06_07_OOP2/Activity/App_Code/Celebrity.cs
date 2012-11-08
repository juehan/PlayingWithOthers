using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Celebrity
/// </summary>
public class Celebrity
{
    
    private int MAX_STRLEN = 50;
    private int MIN_STRLEN = 1;
    private int MAX_AGE = 130;
    private int MIN_AGE = 0;
    
	public Celebrity()
	{
		
	}

    public string FirstName
    {
        get;
        set
        {
            if (FirstName.Length > MAX_STRLEN || FirstName.Length < MIN_STRLEN)
                throw new Exception("Firstname must be between 1 and 50 long");
        }
    }

    public string LastName
    {
        get;
        set
        {
            if (LastName.Length > MAX_STRLEN || LastName.Length < MIN_STRLEN)
                throw new Exception("Lastname must be between 1 and 50 long");
        }
    }

    public string Country
    {
        get;
        set
        {
            if (Country.Length > MAX_STRLEN || Country.Length < MIN_STRLEN)
                throw new Exception("Country must be between 1 and 50 long");
        }
    }

    public decimal Income
    {
        get;
        set;
    }

    public int Age
    {
        get;
        set
        {
            if (Age > MAX_AGE || Age < MIN_AGE)
                throw new Exception("Age is an integer between 0 and 130");
        }
    }

    public string ProfileDescription()
    {
        string output = "";
        output = FirstName + LastName + " is " + Age + " years old and was born in " + Country + " and has earned " + Income;
        return output;
    }
    
}