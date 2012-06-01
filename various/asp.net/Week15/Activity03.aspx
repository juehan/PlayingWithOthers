<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity03.aspx.cs" Inherits="Activity03" %>

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
            SelectCommand="SELECT [pub_name], [pub_id] FROM [publishers]">
        </asp:SqlDataSource>
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:HyperLink ID="lbPub" runat="server" Text='<%# Eval("pub_name") %>' NavigateUrl='<%# Eval("pub_id", "~/Activity03.aspx?id={0}") %>'>
                </asp:HyperLink>
            </ItemTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
        </asp:Repeater>

        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [title], [price], [ytd_sales] FROM [titles] WHERE ([pub_id] = @pub_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pub_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>'>
                </asp:Label>
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price", "{0:c}") %>'>
                </asp:Label>
                Year to data sales:
                <asp:Label ID="lblSales" runat="server" Text='<%# Eval("ytd_sales") %>'>
                </asp:Label>
            </ItemTemplate>
            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>        
        </asp:Repeater>
    
    </div>
    </form>
</body>
</html>
