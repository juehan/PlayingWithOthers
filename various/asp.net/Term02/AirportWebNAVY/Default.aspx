<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AirportWeb.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            Airport Web NAVY</h1>
    </div>
    <br />
    <br />
    <div>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    </div>
    <br />
    <br />
    <div>
        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </div>
    <br />
    <asp:Label ID="lblLastVisit" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblStreet" runat="server" Text="Street: "></asp:Label>
    <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPostCode" runat="server" Text="PostCode: "> </asp:Label>
    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Submit" OnClick="btnSubmit_Click" />
    <br />
    <br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/User/ChangePassword.aspx">Change Password</asp:HyperLink>
    <br />
    <br />
    <br />
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Default.aspx">Administrator's Page</asp:HyperLink>
    </div>
    <br />
    <br />
    <div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Clerical/Default.aspx">Clerical's Page</asp:HyperLink>
    </div>
    <br />
    <br />
    <div>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/User/Default.aspx">User's Page</asp:HyperLink>
        <br />
        <br />
    <div>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Guest/Default.aspx">Guest's Page</asp:HyperLink>
    </div>
    </div>
    </form>
</body>
</html>
