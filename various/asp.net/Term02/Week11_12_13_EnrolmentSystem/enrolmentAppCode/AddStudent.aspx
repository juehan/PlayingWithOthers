<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Student Registration</strong><br />
        <br />
        First Name:<br />
        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
        <br />
        <br />
        Last Name:<br />
        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        <br />
        <br />
        Address:<br />
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        Email:<br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" 
            Text="Register" />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
