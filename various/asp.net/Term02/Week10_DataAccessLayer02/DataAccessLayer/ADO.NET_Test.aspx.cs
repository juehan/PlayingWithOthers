using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADO_NET_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Set up a connection
        string strConn = ConfigurationManager.ConnectionStrings["NorthwindDB"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);

        //Open connection
        conn.Open();

        //Put together your SQL query
        string strSQL = "SELECT CategoryID, CategoryName FROM Categories";

        //Set up a command
        SqlCommand cmd = new SqlCommand(strSQL, conn);

        //SqlCommand cmd2 = new SqlCommand("uspDoSomething", conn);
        //cmd2.CommandType = System.Data.CommandType.StoredProcedure;

        //Execute query
        SqlDataReader rdr = cmd.ExecuteReader();

        //Bind data to our GridView
        gvTest.DataSource = rdr;
        gvTest.DataBind();

        //Close connections (cleanup)
        conn.Close();

    }
}