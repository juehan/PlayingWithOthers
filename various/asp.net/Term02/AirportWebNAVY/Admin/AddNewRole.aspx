<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewRole.aspx.cs" Inherits="Admin_AddNewRole" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Specify the name of the role to create: "></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAddRole" runat="server" Text="Create role" 
            onclick="btnAddRole_Click" />
    </div>
    </form>
</body>
</html>
