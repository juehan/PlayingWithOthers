<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity02.aspx.cs" Inherits="Activity02" %>

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
            SelectCommand="SELECT [title], [price], [pubdate], [notes] FROM [titles]">
        </asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        
            <ItemTemplate>
                <div class="book">
                    Title:
                    <asp:Label ID = "lblTitle" runat = "server" Text= '<%# Eval("title") %>' CssClass="bold">
                    </asp:Label>
                    <br />
                    Price:
                    <asp:Label ID = "lblPrice" runat = "server" Text= '<%# Eval("price", "{0:C}") %>' CssClass="bold">
                    </asp:Label>
                    <br />
                    Published: 
                    <asp:Label ID = "lblDate" runat = "server" Text= '<%# Eval("pubDate", "{0:d}") %>' CssClass="bold">
                    </asp:Label>
                    <br />
                    <div class="notes">
                    <asp:Label ID = "lblNotes" runat = "server" Text= '<%# Eval("notes") %>' CssClass="bold">
                    </asp:Label>
                    </div>
                </div>
            </ItemTemplate>
        
        </asp:Repeater>
        <br />
    
    </div>
    </form>
</body>
</html>
