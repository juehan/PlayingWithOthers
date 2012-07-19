<%@ Page Language="C#" AutoEventWireup="true" CodeFile="03SelectingData.aspx.cs" Inherits="_03SelectingData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DataList1" Name="CategoryID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryID" 
            DataSourceID="SqlDataSource1" CssClass="menu" 
            onitemcommand="DataList1_ItemCommand">

            <SelectedItemStyle CssClass="selectedStyle" />


            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    Text='<%# Eval("CategoryName", "{0}") %>'>
                </asp:LinkButton>
                <br />
            </ItemTemplate>

            <SelectedItemTemplate>
                <asp:Label ID="CategoryNameLabel" runat="server" 
                    Text='<%# Eval("CategoryName") %>' />
            </SelectedItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Eval("ProductName") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
    </form>
</body>
</html>
