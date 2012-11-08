<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity06-CreateClass.aspx.cs" Inherits="WebApplication1.Activity06_CreateClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Create Student<br />
        <asp:Button ID="Button1" runat="server" Text="Create Student" />
        <br />
        <br />
        <br />
        Create Student with student number<br />
        <asp:Button ID="Button2" runat="server" 
            Text="Create Student with Student number" />
        <br />
        <br />
        <br />
        Enrol with course number<br />
        <asp:Button ID="Button3" runat="server" Text="Enrol with course number" />
        <br />
        <br />
        <br />
        Update enrol status<br />
        <asp:Button ID="Button4" runat="server" Text="Update enrol status" />
        <br />
        <br />
        <br />
        Update first name and last name<br />
        <asp:Button ID="Button5" runat="server" 
            Text="Update first name and last name" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
