using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class sqlHelperTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string strSQL;

        //Create instance of our sqlHelper object
        sqlHelper objSqlHelper = new sqlHelper();


        //Check if this is the first page load
        if (!IsPostBack) //same as (!Page.IsPostBack)
        {
            //Set up the SQL for the category dropdown list
            strSQL = "SELECT CategoryID, CategoryName FROM Categories";

            //Execute Query and bind to drop down list
            ddlCategories.DataSource = objSqlHelper.executeSQL(strSQL);
            ddlCategories.DataValueField = "CategoryID";
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataBind();


            //Execute Query and bind to second drop down list
            ddlCategoriesForScalar.DataSource = objSqlHelper.executeSQL(strSQL);
            ddlCategoriesForScalar.DataValueField = "CategoryID";
            ddlCategoriesForScalar.DataTextField = "CategoryName";
            ddlCategoriesForScalar.DataBind();
            
        
        }

        UpdateCategoryListing();

        /*
         *  executeSQL() 
         * 
         */


        //Test the executeSQL() method and bind result to a GridView
        strSQL = "SELECT CategoryID, CategoryName FROM Categories WHERE CategoryID < 5";
        
        gvExecuteSQL.DataSource = objSqlHelper.executeSQL(strSQL);
        gvExecuteSQL.DataBind();

        //Random test using a stored procedure
        //gvExecuteSQL.DataSource = objSqlHelper.executeSP("uspTest");
        //gvExecuteSQL.DataBind();


        /*
         *  scalarSQL() 
         * 
         */


        strSQL = "SELECT COUNT(*) FROM Categories";
        lblScalarSQL.Text = objSqlHelper.scalarSQL(strSQL).ToString();


        /*
         *  nonQuerySQL() 
         * 
         */

        strSQL = "Insert into Categories (categoryName, description) Values ('Test category', 'this is a test description')";

        lblNonQuerySql.Text = objSqlHelper.nonQuerySQL(strSQL).ToString();


    }



    protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
    {

        UpdateCategoryListing();
    }

    private void UpdateCategoryListing()
    {
        //1. Create a SQL Helper objectr
        sqlHelper sh = new sqlHelper();

        //2. Set up the SQL query
        string strSql = "select ProductName, UnitPrice from products where CategoryID = @CategoryID";

        //3. Set up the parameter
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = new SqlParameter("@CategoryID", System.Data.SqlDbType.Decimal);
        parameters[0].Value = int.Parse(ddlCategories.SelectedValue); //change string into integer
        
        //4. Execute Query and bind it to GridView
        gvExecuteSqlWithParameters.DataSource = sh.executeSQL(strSql, parameters);
        gvExecuteSqlWithParameters.DataBind();

    }


    protected void ddlCategoriesForScalar_SelectedIndexChanged(object sender, EventArgs e)
    {
        //1. Create a SQL Helper objectr
        sqlHelper sh = new sqlHelper();

        //2. Set up the SQL query
        string strSql = "select count(*) from products where CategoryID = @CategoryID";

        //3. Set up the parameter
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = new SqlParameter("@CategoryID", System.Data.SqlDbType.Decimal);
        parameters[0].Value = int.Parse(ddlCategoriesForScalar.SelectedValue); //change string into integer

        //4. Execute Query and display value in label.
        lblScalarSQLWithParameters.Text = (sh.scalarSQL(strSql, parameters)).ToString();
        
    }
    protected void btnNonQuerySql_Click(object sender, EventArgs e)
    {
        sqlHelper objSqlHelper = new sqlHelper();

        string strSQL = "Insert into Categories (categoryName, description) Values ('Test category', 'this is a test description')";

        lblNonQuerySql.Text = objSqlHelper.nonQuerySQL(strSQL).ToString();


    }
    protected void btnNonQuerySQLWithParameters_Click(object sender, EventArgs e)
    {
        //1. Create Sql Helper objet
        sqlHelper sh = new sqlHelper();

        //2. Assemble SQL insert statement
        string strSql = "Insert into categories (CategoryName, Description) values (@CategoryName, @Description)";


        //3. Create parameter collection and fill with values from the input form (text boxes)
        SqlParameter[] p = new SqlParameter[2];
        
        p[0] = new SqlParameter("@CategoryName", System.Data.SqlDbType.NVarChar);
        p[0].Value = txtCategoryName.Text;

        p[1] = new SqlParameter("@Description", System.Data.SqlDbType.NText);
        p[1].Value = txtCategoryDescription.Text;
        

        //4. Execute the query and display result in label
        int numRowsAffected = sh.nonQuerySQL(strSql, p);

        if (numRowsAffected > 0)
        {
            lblNonSqlWithParameters.Text = "Category inserted successfully";
        }
        else
        {
            lblNonSqlWithParameters.Text = "Unsuccessful category insert";
        }
        

    }
}