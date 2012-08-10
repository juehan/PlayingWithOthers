<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pubsHomePage.aspx.cs" Inherits="pubsHomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Programming Assignment Project (John Lee)</title>
    <link href="jstyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 108px;
            width: 503px;
        }
    </style>
</head>
<%--Body color is specified here--%>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <%--Header Section--%>
        <div id="header">
            <img alt="title_image_goes_here" class="style1" longdesc="title image" src="./img/img_title.png" /><br />
            <br />
            <asp:Label ID="lblTitle" runat="server" Text="Latest Titles:"></asp:Label>
            <asp:SqlDataSource ID="sqlds_latest_title" runat="server" ConnectionString="<%$ ConnectionStrings:con_latestTitle %>"
                SelectCommand="SELECT TOP (3) title FROM titles ORDER BY pubdate DESC"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqlds_latest_title">
                <ItemTemplate>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                </ItemTemplate>
                <SeparatorTemplate>
                    |
                </SeparatorTemplate>
            </asp:Repeater>
        </div>
        <%--Menu section--%>
        <div id="maincontainer" class="clearFix">
            <%--Left Column--%>
            <div id="leftcolumn">
                <%--Stores--%>
                <div style="font-size: larger; font-weight: bold; color: orange">
                    Stores
                </div>
                <br />
                <asp:SqlDataSource ID="sqlds_store" runat="server" ConnectionString="<%$ ConnectionStrings:con_latestTitle %>"
                    SelectCommand="SELECT [stor_name], [stor_address], [city], [state] FROM [stores]">
                </asp:SqlDataSource>
                <asp:ListView ID="lv_store" runat="server" DataSourceID="sqlds_store">
                    <LayoutTemplate>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="Server"></asp:PlaceHolder>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <asp:Label ID="stor_nameLabel" runat="server" Text='<%# Eval("stor_name") %>' />
                        <br />
                        <asp:Label ID="stor_addressLabel" runat="server" Text='<%# Eval("stor_address") %>' />
                        <br />
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />&nbsp;
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                        <br />
                    </ItemTemplate>
                </asp:ListView>
                <%--Publishers--%><%--List all the publishers here--%>
                <br />
                <div style="font-size: larger; font-weight: bold; color: orange">
                    Publishers</div>
                <br />
                <asp:SqlDataSource ID="sqlds_publishers" runat="server" ConnectionString="<%$ ConnectionStrings:con_latestTitle %>"
                    SelectCommand="SELECT [pub_name] FROM [publishers]"></asp:SqlDataSource>
                <asp:DataList ID="ds_publishers" runat="server" DataSourceID="sqlds_publishers">
                    <ItemTemplate>
                        <asp:Label ID="pub_nameLabel" runat="server" Text='<%# Eval("pub_name") %>' />
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <%--Content Section--%>
            <div id="contentcolumn">
                <div style="font-size: larger; font-weight: bold; color: orange">
                    Our Books</div>
                <br />
                <asp:SqlDataSource ID="sqlds_title" runat="server" ConnectionString="<%$ ConnectionStrings:con_latestTitle %>"
                    SelectCommand="SELECT titles.title, titles.pubdate, titles.price, authors.au_lname FROM authors INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id INNER JOIN titles ON titleauthor.title_id = titles.title_id">
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataSourceID="sqlds_title" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="pubdate" DataFormatString="{0:d}" HeaderText="Published"
                            SortExpression="pubdate" />
                        <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="price" />
                        <asp:BoundField DataField="au_lname" HeaderText="Author" SortExpression="au_lname" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
            <%--Right Column--%>
            <div id="rightcolumn">
                <div style="font-size: larger; font-weight: bold; color: orange">
                    View titles by Author</div>
                <asp:SqlDataSource ID="sqlds_title_by_author" runat="server" ConnectionString="<%$ ConnectionStrings:con_latestTitle %>"
                    SelectCommand="SELECT [au_fname], [au_lname], [au_id] FROM [authors]"></asp:SqlDataSource>
                <asp:GridView ID="gvAuthor" runat="server" AutoGenerateColumns="False" DataKeyNames="au_id"
                    DataSourceID="sqlds_title_by_author" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField HeaderText="au_fname" SortExpression="au_fname">
                            <ItemTemplate>
                                <%# Eval("au_fname") %>
                                <%#Eval("au_lname") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="au_id" DataNavigateUrlFormatString="booksByAuthor.aspx?id={0}"
                            Text="View Books" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <%--Footer Section--%>
        <div id="footer">
            <a href="http://juehan.github.com/">Design by John Lee</a>
        </div>
    </div>
    <%--end of wrapper--%>
    </form>
</body>
</html>
