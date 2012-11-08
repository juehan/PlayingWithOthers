using System;
using System.Collections.Generic;

using System.Configuration; //namespace for getting sql connection string
using System.Data.SqlClient; //namespace for sql related functions


using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sqlHelper
/// </summary>
public class sqlHelper
{

    private string _ConnStr;

    private SqlConnection _Conn;

	public sqlHelper()
	{
        //Get connection string from the web.config file
        _ConnStr = ConfigurationManager.ConnectionStrings["NORTHWNDConnectionString"].ConnectionString;

        _Conn = new SqlConnection(_ConnStr); 

	}

    public SqlDataReader executeSQL(string str)
    {
        //Create connection

        //SqlConnection conn = new SqlConnection(_ConnStr);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand com = new SqlCommand(str, _Conn);

        //open connection
        _Conn.Open();

        //execute query and close connection
        return com.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

    }




}