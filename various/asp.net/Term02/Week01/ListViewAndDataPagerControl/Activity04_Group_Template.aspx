<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity04_Group_Template.aspx.cs" Inherits="Activity04_Group_Template" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="4">
        <LayoutTemplate>
            <asp:PlaceHolder ID="groupPlaceholder" runat="server">
            </asp:PlaceHolder>
        </LayoutTemplate>
        <GroupTemplate>
            <div>
                <asp:PlaceHolder ID="ItemPlaceholder" runat="server">                
                </asp:PlaceHolder>
            </div>        
        </GroupTemplate>
        <GroupSeparatorTemplate>
            <hr />
        </GroupSeparatorTemplate>
        <ItemTemplate>
            <span>
                <%# Eval("productName") %>
                <%# Eval("unitPrice", "{0:c}") %>
            </span>
        </ItemTemplate>
        <ItemSeparatorTemplate>
            ,
        </ItemSeparatorTemplate>
        </asp:ListView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
