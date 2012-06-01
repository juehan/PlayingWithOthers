<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity04.aspx.cs" Inherits="Activity04" %>

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
            SelectCommand="SELECT [title], [price], [ytd_sales] FROM [titles]">
        </asp:SqlDataSource>
        <div id="bookList">
        <div class="bookList">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>'>
                    </asp:Label>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price", "{0:c}") %>'>
                    </asp:Label>
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add to wish list"/>                    
                </ItemTemplate>
                <SeparatorTemplate>
                    <hr />
                </SeparatorTemplate>
            </asp:Repeater>
        </div>
        </div>
        <div id="wishList">
        <div class="wishList">
            <asp:Label ID="lblWish" runat="server">
            </asp:Label>
        </div>
        </div>
            
    </div>
    </form>
</body>
</html>
