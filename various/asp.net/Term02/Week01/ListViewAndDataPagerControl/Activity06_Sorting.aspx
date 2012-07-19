<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity06_Sorting.aspx.cs" Inherits="Activity06_Sorting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [FirstName], [LastName], [TitleOfCourtesy], [HireDate], [Title], [BirthDate], [Extension] FROM [Employees]">
        </asp:SqlDataSource>
        <br />


        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <LayoutTemplate>
            <div id="employeeList">
                <h2>Sort by:</h2>
                <div id="sortEmployee">
                    <asp:LinkButton ID="lkbFirstName" Text="First Name" CommandArgument="firstName" CommandName="sort" runat="server">
                    </asp:LinkButton>
                    <asp:LinkButton ID="lkbLastName" Text="Last Name" CommandArgument="lastName" CommandName="sort" runat="server">
                    </asp:LinkButton>
                    <asp:LinkButton ID="lkbTitle" Text="Position" CommandArgument="title" CommandName="sort" runat="server">
                    </asp:LinkButton>
                    <asp:LinkButton ID="lkbHire" Text="Hire Date" CommandArgument="hireDate" CommandName="sort" runat="server">
                    </asp:LinkButton>
                </div>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server">
                </asp:PlaceHolder>
            </div>    
        </LayoutTemplate>
        <ItemTemplate>
            <div>
                <%# Eval("TitleOfCourtesy") %>
                <%# Eval("firstName") %>
                <%# Eval("lastName") %>
                <br />
                
                DOB: <%# Eval("birthDate") %>
                <br />
                
                <%# Eval("title") %>
                <br />
                Date Hired: <%# Eval("hireDate") %>
                <br />
                Ext: <%# Eval("extension") %>                
                <br />
                <br />
            </div>
        </ItemTemplate>
        
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
