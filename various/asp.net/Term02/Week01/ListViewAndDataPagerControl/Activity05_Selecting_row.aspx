<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity05_Selecting_row.aspx.cs" Inherits="Activity05_Selecting_row" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="JSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="categoryID">
        
        <LayoutTemplate>
            <div id="categoryList">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server">
                </asp:PlaceHolder>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div>
                <asp:LinkButton ID="lkbSelect" Text='<%# Eval("categoryName") %>' CommandName="Select"
                runat="server"> </asp:LinkButton>            
            </div>
        
        </ItemTemplate>

        <SelectedItemTemplate>
            <div id="selected">
                <%# Eval("categoryName") %>            
            </div>
        
        </SelectedItemTemplate>

        </asp:ListView>
        <br />
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
        SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListView1" Name="CategoryID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    <p>
        &nbsp;</p>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">

        <LayoutTemplate>
            <div>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server">
                </asp:PlaceHolder>
            </div>        
        </LayoutTemplate>
        <ItemTemplate>
            <div>
                <%# Eval("ProductName") %>
                <%# Eval("UnitPrice", "{0:C}") %>
            </div>
        </ItemTemplate>
    </asp:ListView>


    </form>
</body>
</html>
