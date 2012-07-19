﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity03_Alternating_Item_Template.aspx.cs" Inherits="Activity03_Alternating_Item_Template" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="JSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

        
        <LayoutTemplate>
            <div>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server">                
                </asp:PlaceHolder>            
            </div>
        </LayoutTemplate>
            
        <ItemTemplate>
            <div>
                <%# Eval("CategoryName") %>            
            </div>        
        </ItemTemplate>

        <ItemSeparatorTemplate>
            <hr />
        </ItemSeparatorTemplate>

        <AlternatingItemTemplate>
            <div class="alternateStyle">
                <%# Eval("CategoryName") %>
            </div>
        </AlternatingItemTemplate>


        </asp:ListView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [CategoryName] FROM [Categories]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
