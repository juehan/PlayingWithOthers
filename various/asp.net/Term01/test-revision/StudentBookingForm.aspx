<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentBookingForm.aspx.cs" Inherits="beforeTest.studentBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Page">
        <div id="Title">
            Student Booking Form
        </div>
        <div id="Body">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Please enter the number of students in the class:">
            </asp:Label>&nbsp; <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnGenerate" runat="server" Text="Generate Booking form" 
                onclick="btnGenerate_Click" /><br /><br />
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
