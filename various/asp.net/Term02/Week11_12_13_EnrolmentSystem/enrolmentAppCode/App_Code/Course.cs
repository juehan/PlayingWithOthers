using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Course
/// </summary>
public class Course
{
    private SqlHelper _DAL;

	public Course()
	{
        _DAL = new SqlHelper();    
    }

    public SqlDataReader retrieveCourses()
    {
        string strSql = "uspRetrieveCourses";
        return _DAL.executeSQL(strSql);
    }

    public SqlDataReader GetAllCourses()
    {
        return _DAL.executeSP("uspRetrieveCourses");
    }

    public SqlDataReader GetStudentByCourse(int courseID)
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = new SqlParameter("@courseID", System.Data.SqlDbType.Int);
        parameters[0].Value = courseID;


        return _DAL.executeSP("uspRetreiveList", parameters);

    }

    public SqlDataReader GetStudentNotInCourse(int courseID)
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = new SqlParameter("@courseID", System.Data.SqlDbType.Int);
        parameters[0].Value = courseID;


        return _DAL.executeSP("uspStudentsNotInCourse", parameters);

    }


    public int EnrolStudent(int studentID, int courseID, string year)
    {
        String strSql = "uspEnrolStudent";

        //populate parameters
        SqlParameter[] objParams = new SqlParameter[3];

        objParams[0] = new SqlParameter("@studentID", SqlDbType.Int);
        objParams[0].Value = studentID;

        objParams[1] = new SqlParameter("@courseID", SqlDbType.Int);
        objParams[1].Value = courseID;

        objParams[2] = new SqlParameter("@year", SqlDbType.VarChar);
        objParams[2].Value = year;


        return _DAL.executeNonQuery(strSql, objParams, CommandType.StoredProcedure);
    }



}