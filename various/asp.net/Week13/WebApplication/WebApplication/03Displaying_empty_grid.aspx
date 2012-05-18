<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03Displaying_empty_grid.aspx.cs" Inherits="WebApplication.Displaying_an_empty_grid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UnitPrice], [ProductName], [CategoryID] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text="No products in that category"></asp:Label>
            </EmptyDataTemplate>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
