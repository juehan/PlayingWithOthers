<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity03_Paging.aspx.cs" Inherits="Activity03_Paging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" CssClass="customerDetail">
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
                
                <asp:Label ID="CustomerIDLabel" runat="server" cssClass="customerId"
                    Text='<%# Eval("CustomerID") %>' />
                <br />
                
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />
                Contact:
                <asp:Label ID="ContactTitleLabel" runat="server" 
                    Text='<%# Bind("ContactTitle") %>' />
                <asp:Label ID="ContactNameLabel" runat="server" 
                    Text='<%# Bind("ContactName") %>' />
                <br />          
                <br />
                
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                               
                <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
                                
                <asp:Label ID="PostalCodeLabel" runat="server" 
                    Text='<%# Bind("PostalCode") %>' />
                
                
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                <br /><br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                Fax:                
                <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                <br /><br />

            </ItemTemplate>
            
            <PagerTemplate>
            <hr />
                Page:
                <asp:Label ID="Label1" runat="server" Text="<%#FormView1.PageIndex + 1 %>"></asp:Label>
                <br />
                <br />

                <div class=pageLeft>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Page" CommandArgument="Prev">Previous Page</asp:LinkButton>
                </div>
                <div class=pageRight>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Page" CommandArgument="Next">Next Page</asp:LinkButton>
                </div>

            </PagerTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
