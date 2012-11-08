<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productsByCategory.aspx.cs"
    Inherits="productsByCategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product By Category</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <%--HEADER--%>
        <div id="header">
            <p class="title">
                Northwind DB revision</p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/productsByCategory.aspx">Product By Category</asp:HyperLink>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/suppliers.aspx">Suppliers</asp:HyperLink>
            <br />
        </div>
        <%--empty div--%>
        <div id="emptydiv">
        
        </div>
        <%--Left menu--%>
        <div id="leftcolumn">
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID"
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="CategoryID" DataNavigateUrlFormatString="productsByCategory.aspx?CategoryID={0}"
                        DataTextField="CategoryName" HeaderText="Category Name" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCategory %>"
                SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
        </div>
        <%--Content--%>
        <div id="content">
            <p class="title"> Products</p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" 
                        SortExpression="UnitPrice" DataFormatString="{0:C2}" HtmlEncode="False" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCategory %>"
                SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CategoryID" QueryStringField="CategoryID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <%--empty--%>
        <div id="emptydiv">
        </div>

        <%--Footer--%>
        
        <div id="footer">
            <p>
            <hr />
                Created by not too stupid web diploma student (c) 2012 
            </p>
        
        </div>
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
