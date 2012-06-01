<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity12.aspx.cs" Inherits="Activity12" %>

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
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" DataKeyNames="CustomerID" 
            DataSourceID="SqlDataSource1" Height="50px" Width="325px">
            <AlternatingRowStyle CssClass="alternatingRowStyle" />
            <FieldHeaderStyle CssClass="fieldHeader" />
            <Fields>
                <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="Contact Name" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="Contact Title" 
                    SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" 
                    SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" 
                    SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            </Fields>
            <HeaderStyle CssClass="heading" />
            <HeaderTemplate>
                Customers
            </HeaderTemplate>
            <PagerTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                    DataValueField="CustomerID">
                </asp:DropDownList>
            </PagerTemplate>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
