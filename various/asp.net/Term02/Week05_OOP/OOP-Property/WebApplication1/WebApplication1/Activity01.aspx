﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity01.aspx.cs" Inherits="WebApplication1.Activity01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        First Name:<br />
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        <br />
        <br />
        Last Name:<br />
        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        <br />
        <br />
        Student Number:<br />
        <asp:TextBox ID="txtSName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
