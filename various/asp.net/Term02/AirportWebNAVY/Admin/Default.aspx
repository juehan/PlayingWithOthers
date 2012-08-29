<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>This is the administration page</h1>
    <p>Only authenticated members of the admin role can browse this page</p>
        <p>Create Role</p>
        <p>
            <asp:TextBox ID="txtNewRole" runat="server" Width="200px"></asp:TextBox>
        </p>

        <%--Homework: Create a page that will allow Admin to create a new role (e.g. HumanResources)--%>

        <p>
            <asp:Button ID="btnCreatRole" runat="server" onclick="btnCreatRole_Click"  Text="Submit" />
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>

    <div>
    
        Create a Page that adds new Role
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AddNewRole.aspx">Create A New Role</asp:HyperLink>

    </div>


    </form>
</body>
</html>
