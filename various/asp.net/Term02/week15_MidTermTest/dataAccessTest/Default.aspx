<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%--
Author: Juehan Lee <juehan.lee@tafensw.net.au>

Date: 08-Nov-2012

Description: 
    This page lists all the publishers as hyperlinks. 
    When a publisher is selected all the books for that publisher are displayed in a grid view on the same page.
    For each book display the title, type and price. 
    The book title is displayed as a hyperlink which when clicked redirects the user to authors.aspx.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Access Test - Juehan Lee (Navy)</title>
    <link href="dataAccessTest.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="inner">
            <%--HEADER--%>
            <div id="header" class="bigTitle" style="font-size: xx-large; text-transform: none;
                font-family: 'Arial Black'">
                <asp:Image ID="heading" runat="server" ImageUrl="~/images/heading.gif" /><br />
                <br />
            </div>
            <%--EMPTY DIV--%>
            <div id="empty">
            </div>
            <%--LEFT MENU--%>
            <div id="leftcolumn">
                <asp:Label ID="Label2" runat="server" CssClass="title" Text="Publishers"></asp:Label>
                <br />
                <asp:GridView ID="gvPublishers" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="pub_id"
                    DataSourceID="sdsPublishers" GridLines="Horizontal" ShowHeader="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="pub_id" DataNavigateUrlFormatString="Default.aspx?pub_id={0}"
                            DataTextField="pub_name" ShowHeader="False" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="sdsPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:dataAccessTestConString %>"
                    SelectCommand="SELECT [pub_id], [pub_name] FROM [publishers]"></asp:SqlDataSource>
                <br />
                <asp:Image ID="books" runat="server" ImageUrl="~/images/books.gif" />
            </div>
            <%--CONTENTS--%>
            <div id="content">
                <asp:Label ID="Label1" runat="server" CssClass="title" Text="Our Books"></asp:Label>
                <br />
                <asp:GridView ID="gvBook" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                    CellPadding="3" DataKeyNames="title_id" DataSourceID="sdsBooks" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="title_id" DataNavigateUrlFormatString="Authors.aspx?title_id={0}"
                            DataTextField="title" Text="Title" HeaderText="Title" SortExpression="title">
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                        <asp:BoundField DataField="price" DataFormatString="{0:c2}" HeaderText="Price" SortExpression="price" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <br />
                <br />
                <asp:SqlDataSource ID="sdsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:dataAccessTestConString %>"
                    SelectCommand="SELECT [pub_id], [title], [type], [price], [title_id] FROM [titles] WHERE ([pub_id] = @pub_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="pub_id" QueryStringField="pub_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <%--EMPTY DIV--%>
            <div id="empty">
            </div>
            <%--FOOTER--%>
            <div id="footer">
                <p>
                    <hr class="bar" />
                    Created by not too stupid web diploma student &copy 2012
                </p>
            </div>
        </div>
        <%--end of inner--%>
    </div>
    <%--end of wrapper--%>
    </form>
</body>
</html>
