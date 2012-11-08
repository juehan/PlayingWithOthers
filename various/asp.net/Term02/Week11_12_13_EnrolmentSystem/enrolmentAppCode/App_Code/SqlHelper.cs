using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using System.Data;

/// <summary>
/// Summary description for SqlHelper
/// </summary>
public class SqlHelper
{

    private string _Conn;

	public SqlHelper()
	{
		//Get connection string from the web.config file
        _Conn = ConfigurationManager.ConnectionStrings["EnrolConnectionString"].ConnectionString;
	}

    public SqlDataReader executeSQL(string strSQL)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);

        //Open connection
        objConnection.Open();

        //Execute query and return data (and close connection)
        return objCommand.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

    }


    //Loop through each parameter, add them to the command object's parameter collection
    private void fillParameters(SqlCommand objCommand, SqlParameter[] parameters)
    {
        foreach (SqlParameter sp in parameters)
        {
            objCommand.Parameters.Add(sp);
        }
    }


    public SqlDataReader executeSQL(string strSQL, SqlParameter[] parameters)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);

        //Fill the command object with the provided parameters
        fillParameters(objCommand, parameters);
        

        //Open connection
        objConnection.Open();

        //Execute query and return data (and close connection)
        return objCommand.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

    }





    public object scalarSQL(string strSQL)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);

        //Open connection
        objConnection.Open();
        
        //Execute query
        object objReturnValue = objCommand.ExecuteScalar();

        //Close connection
        objConnection.Close();

        //Return the value
        return objReturnValue;

    }

    public object scalarSQL(string strSQL, SqlParameter[] parameters)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);

        fillParameters(objCommand, parameters);

        //Open connection
        objConnection.Open();

        //Execute query
        object objReturnValue = objCommand.ExecuteScalar();

        //Close connection
        objConnection.Close();

        //Return the value
        return objReturnValue;

    }
    
    public int nonQuerySQL(string strSQL)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);

        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }



    public int nonQuerySQL(string strSQL, SqlParameter[] parameters)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);



        fillParameters(objCommand, parameters);




        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }

    public int executeNonQuery(string strSQL, CommandType commandType = CommandType.Text)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
        objCommand.CommandType = commandType;

        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }

    public int executeNonQuery(string strSQL, SqlParameter[] parameters, CommandType commandType = CommandType.Text)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
        objCommand.CommandType = commandType;

        fillParameters(objCommand, parameters);

        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }


    public int nonQuerySP(string strSQL)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
        objCommand.CommandType = System.Data.CommandType.StoredProcedure;

        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }



    public int nonQuerySP(string strSQL, SqlParameter[] parameters)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
        objCommand.CommandType = CommandType.StoredProcedure;


        fillParameters(objCommand, parameters);




        //Open connection
        objConnection.Open();

        //Execute query
        int intReturnValue = objCommand.ExecuteNonQuery();

        //Close connection
        objConnection.Close();

        //Return the value
        return intReturnValue;

    }












    public SqlDataReader executeSP(string strSP)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSP, objConnection);
        objCommand.CommandType = System.Data.CommandType.StoredProcedure;

        //Open connection
        objConnection.Open();

        //Execute query and return data (and close connection)
        return objCommand.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

    }



    public SqlDataReader executeSP(string strSP, SqlParameter[] parameters)
    {

        //Create connection (from private property)
        SqlConnection objConnection = new SqlConnection(_Conn);

        //Create command (with string of SQL passed in as a parameter)
        SqlCommand objCommand = new SqlCommand(strSP, objConnection);
        objCommand.CommandType = System.Data.CommandType.StoredProcedure;

        fillParameters(objCommand, parameters);

        //Open connection
        objConnection.Open();

        //Execute query and return data (and close connection)
        return objCommand.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

    }



}