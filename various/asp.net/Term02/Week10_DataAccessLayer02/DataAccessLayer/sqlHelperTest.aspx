<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sqlHelperTest.aspx.cs" Inherits="sqlHelperTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <h2>executeSQL()</h2>

        <asp:GridView ID="gvExecuteSQL" runat="server">
        </asp:GridView>


        <h2>scalarSQL()</h2>
        Count of categories:
        <asp:Label ID="lblScalarSQL" runat="server"></asp:Label>

        <br />
        <br />



        
        <h2>scalarSQL() with parameters</h2>

         Select a category:

        <asp:DropDownList ID="ddlCategoriesForScalar" runat="server" 
            AutoPostBack="True" 
            onselectedindexchanged="ddlCategoriesForScalar_SelectedIndexChanged" >   
        </asp:DropDownList>
        
        <br />
        <br />

        Count of product:
        <asp:Label ID="lblScalarSQLWithParameters" runat="server"></asp:Label>

        <br />
        <br />





        <h2>nonQuerySQL()</h2>
        <p>
            <asp:Button ID="btnNonQuerySql" runat="server" Text="Add Test Category" 
                onclick="btnNonQuerySql_Click" />
            <asp:Label ID="lblNonQuerySql" runat="server"></asp:Label>
        </p>


        <br />
        <br />
        <h2>nonQuerySQL() with parameters</h2>

        Category Name: <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox><br /><br />
        Category Description: <asp:TextBox ID="txtCategoryDescription" runat="server"></asp:TextBox>
        <br />
        <p>
            <asp:Button ID="btnNonQuerySQLWithParameters" runat="server" 
                Text="Add Category" onclick="btnNonQuerySQLWithParameters_Click"/>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblNonSqlWithParameters" runat="server"></asp:Label>
        </p>


        <br />
        <br />


      <h2>executeSQL() with parameters</h2>

      Select a category:
        <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlCategories_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:GridView ID="gvExecuteSqlWithParameters" runat="server">
        </asp:GridView>

    </div>
    </form>
</body>
</html>
