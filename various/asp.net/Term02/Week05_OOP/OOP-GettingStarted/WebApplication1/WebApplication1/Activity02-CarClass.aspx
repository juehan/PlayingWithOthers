<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity02-CarClass.aspx.cs" Inherits="WebApplication1.Activity02_CarClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Comic Sans MS'; font-size: x-large; font-weight: bold">
    
        This web page is for testing Car class<br />
        <br />
        Make:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMake" runat="server"></asp:TextBox>
        <br />
        <br />
        Color:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
        <br />
        <br />
        Year:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
        <br />
        <br />
        Model:&nbsp;
        <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
            Text="Submit" />
&nbsp;
        <br />
        <br />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
