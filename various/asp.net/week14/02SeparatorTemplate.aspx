<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02SeparatorTemplate.aspx.cs" Inherits="_01CreatingDataListControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [FirstName], [LastName], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [TitleOfCourtesy] FROM [Employees]">
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="5">
        <FooterStyle CssClass="footerStyle" />
        <FooterTemplate>
            - END OF RECORD -
        </FooterTemplate>
        <HeaderStyle CssClass="headerStyle" />
        <HeaderTemplate>
            Employee Details
        </HeaderTemplate>
        <ItemTemplate>
            <br />
            <asp:Label ID="TitleOfCourtesyLabel" runat="server" CssClass="bold" 
                Text='<%# Eval("TitleOfCourtesy") %>' />
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' 
                CssClass="bold" />
            <br />
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
            Date of Birth:
            <asp:Label ID="BirthDateLabel" runat="server" 
                Text='<%# Eval("BirthDate", "{0:d}") %>' />
            <br />
            Date Hired:
            <asp:Label ID="HireDateLabel" runat="server" 
                Text='<%# Eval("HireDate", "{0:d}") %>' />
            <br />
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            <br />
            <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
            <br />
            <asp:Label ID="PostalCodeLabel" runat="server" 
                Text='<%# Eval("PostalCode") %>' />
            <br />
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            Home Phone:
            <asp:Label ID="HomePhoneLabel" runat="server" Text='<%# Eval("HomePhone") %>' />
<br />
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
    <br />
    </form>
</body>
</html>
