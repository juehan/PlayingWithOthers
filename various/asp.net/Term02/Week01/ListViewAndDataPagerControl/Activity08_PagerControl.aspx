<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity08_PagerControl.aspx.cs" Inherits="Activity08_PagerControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--Beginning of ListView--%>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <div>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server">
                    </asp:PlaceHolder>
                    <hr />
                    <asp:DataPager ID="dpProducts" runat="server" PageSize="10">
                        <Fields>
                            <asp:NumericPagerField />
                        </Fields>
                    </asp:DataPager>
                </div>    
            </LayoutTemplate>

            
            <%--biginning of ItemTemplate--%>
            <ItemTemplate>
                <div>
                    <%#Eval("ProductName") %>
                    <%#Eval("UnitPrice", "{0:C}") %>
                </div>
            </ItemTemplate>

        </asp:ListView>
        
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products]">
        </asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>
