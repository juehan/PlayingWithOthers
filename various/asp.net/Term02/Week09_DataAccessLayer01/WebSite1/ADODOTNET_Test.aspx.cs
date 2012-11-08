using System;
using System.Collections.Generic;

using System.Data.SqlClient;
using System.Configuration;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADODOTNET_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //set up a connection
        string strConn = ConfigurationManager.ConnectionStrings["NORTHWNDConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);

        try
        {
            //open connection
            conn.Open();
        
            //Put together your SQL statement
            string strSql = "select categoryID as 'Category ID', categoryName as 'Category Name' from Categories";


            //Setup a command
            SqlCommand cmd = new SqlCommand(strSql, conn);
            SqlCommand cmd2 = new SqlCommand("uspDoSomething", conn);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
        
        
            //Execute
            SqlDataReader rdr =  cmd.ExecuteReader();
        


            //Bind data to our Gridview
            gvTest.DataSource = rdr;
            gvTest.DataBind();

        
            //Close connection(cleanup)
            conn.Close();

        }
        catch (System.Exception ex)
        {
            //open error
            return;
        }


    }
}