<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity2.aspx.cs" Inherits="juehanlee.Activity2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hornsbyIT.jpg" />
    </div>
    <div id="page">
    <p>
        Which course are you studying?:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" />
    </p>
    <p>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
    </form>
    </div>
</body>
</html>
