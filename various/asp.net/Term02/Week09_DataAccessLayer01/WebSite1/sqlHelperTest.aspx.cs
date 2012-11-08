using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sqlHelperTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlHelper hlp = new sqlHelper();


        string strSql = "Select categoryID, categoryName from Categories";
        gvExecuteSql.DataSource = hlp.executeSQL(strSql);

        gvExecuteSql.DataBind();



    }
}