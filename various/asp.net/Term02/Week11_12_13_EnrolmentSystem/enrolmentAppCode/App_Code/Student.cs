using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for Student
/// </summary>
public class Student
{
    private SqlHelper _DAL;

	public Student()
	{
        _DAL = new SqlHelper();
	}

    public int AddStudent(String fName, String lName, String addr, String email)
    {
        String strSql = "uspAddStudent";

        //populate parameters
        SqlParameter[] objParams = new SqlParameter[4];

        objParams[0] = new SqlParameter("@lastName", SqlDbType.VarChar, 50);
        objParams[0].Value = lName;

        objParams[1] = new SqlParameter("@firstName", SqlDbType.VarChar, 50);
        objParams[1].Value = fName;

        objParams[2] = new SqlParameter("@address", SqlDbType.VarChar, 200);
        objParams[2].Value = addr;

        objParams[3] = new SqlParameter("@email", SqlDbType.VarChar, 100);
        objParams[3].Value = email;

        return _DAL.executeNonQuery(strSql, objParams, CommandType.StoredProcedure);
    }

    public SqlDataReader retrieveList(int courseID)
    {
        string strSql = "uspRetreiveList";

        SqlParameter[] objParams;
        objParams = new SqlParameter[1];
        
        objParams[0] = new SqlParameter("@courseID", SqlDbType.Int);
        objParams[0].Value = courseID;

        return _DAL.executeSQL(strSql, objParams);
    }

    public SqlDataReader retrieveNotInCourse(int courseID)
    {
        string strSQL = "uspStudentsNotInCourse";

        SqlParameter[] objParams;
        objParams = new SqlParameter[1];
        objParams[0] = new SqlParameter("@courseID", SqlDbType.Int);
        objParams[0].Value = courseID;
        
        return _DAL.executeSQL(strSQL, objParams);
    }


    public int EnrolStudent(int courseID, int studentID, string year)
    {
        string strSQL = "uspEnrolStudent";

        //populate parameters
        SqlParameter[] objParams = new SqlParameter[3];

        objParams[0] = new SqlParameter("@courseID", SqlDbType.Int);
        objParams[0].Value = courseID;

        objParams[1] = new SqlParameter("@studentID", SqlDbType.Int);
        objParams[1].Value = studentID;

        objParams[2] = new SqlParameter("@year", SqlDbType.VarChar, 50);
        objParams[2].Value = year;

        return _DAL.nonQuerySQL(strSQL, objParams);
    }


}