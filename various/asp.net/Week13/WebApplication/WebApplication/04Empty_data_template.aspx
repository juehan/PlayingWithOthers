<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="04Empty_data_template.aspx.cs" Inherits="WebApplication._04Empty_data_template" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource04" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UnitPrice], [ProductName] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource04">
            <Columns>
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
            </Columns>
            <EmptyDataTemplate>
                <asp:HyperLink ID="hplHome" runat="server" 
                    NavigateUrl="~/04Empty_data_template.aspx">No data found</asp:HyperLink>
            </EmptyDataTemplate>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
