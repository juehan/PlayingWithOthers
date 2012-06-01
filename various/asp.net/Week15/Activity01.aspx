<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity01.aspx.cs" Inherits="Activity01" %>

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
            SelectCommand="SELECT [title] FROM [titles]"></asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

            <ItemTemplate>
                <%#Eval("Title") %>
            </ItemTemplate>
            <SeparatorTemplate>
            ,
            </SeparatorTemplate>


        </asp:Repeater>
        <br />    
    </div>
    </form>
</body>
</html>
