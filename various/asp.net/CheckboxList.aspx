<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckboxList.aspx.cs" Inherits="beforeTest.checkboxlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Page">
        <asp:Label ID="Label1" runat="server" Text="Select the days you attend TAFE:"></asp:Label><br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Monday</asp:ListItem>
            <asp:ListItem>Tuesday</asp:ListItem>
            <asp:ListItem>Wednesday</asp:ListItem>
            <asp:ListItem>Thursday</asp:ListItem>
            <asp:ListItem>Friday</asp:ListItem>
        </asp:CheckBoxList><br />

        <asp:Button ID="Button1" runat="server" Text="Days" onclick="Button1_Click" /><br /><br />
        <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
