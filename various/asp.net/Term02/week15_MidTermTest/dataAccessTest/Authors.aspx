<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Authors.aspx.cs" Inherits="Authors" %>
<%--
Author: Juehan Lee <juehan.lee@tafensw.net.au>

Date: 08-Nov-2012

Description: 
    This page lists all the authors for the selected book title (selected from default.aspx). 
    For each author display the Author’s first and last name, phone and address.
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
                <br />
                <asp:Image ID="books" runat="server" ImageUrl="~/images/books.gif" />
            </div>
            <%--CONTENTS--%>
            <div id="content">
                <asp:Label ID="Label1" runat="server" CssClass="title" Text="Authors"></asp:Label>
                <br />
                <asp:GridView ID="gvAuthor" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="au_id,Expr1,title_id,Expr2"
                    DataSourceID="sdsAuthor" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
                        <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
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
                <asp:SqlDataSource ID="sdsAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:dataAccessTestConString %>"
                    SelectCommand="SELECT authors.au_id, authors.au_fname, authors.au_lname, authors.phone, authors.address, titleauthor.au_id AS Expr1, titleauthor.title_id, titles.title_id AS Expr2 FROM authors INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id INNER JOIN titles ON titleauthor.title_id = titles.title_id WHERE (titles.title_id = @title_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="title_id" QueryStringField="title_id" />
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
