<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity01_Displaying_data.aspx.cs" Inherits="Activity01_Displaying_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
    
    <div class="header">
    Displaying data
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="ALFKI" Name="CustomerID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerID" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel1" runat="server" 
                Text='<%# Eval("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" 
                Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerID:
            <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                Text='<%# Bind("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" 
                Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel" runat="server" 
                Text='<%# Eval("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:Label ID="CompanyNameLabel" runat="server" 
                Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:Label ID="ContactNameLabel" runat="server" 
                Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:Label ID="ContactTitleLabel" runat="server" 
                Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:Label ID="PostalCodeLabel" runat="server" 
                Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
