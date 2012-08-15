<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity02_Reverse.aspx.cs" Inherits="Asp.Net.Collection.Activity02_Reverse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Original<br />
        <asp:ListBox ID="lbOriginal" runat="server"></asp:ListBox>
        <br />
        <br />
        Reverse<br />
        <asp:ListBox ID="lbReverse" runat="server"></asp:ListBox>
    
        

        <br />
        <br />
        Sorted<br />
        <asp:ListBox ID="lbSorted" runat="server"></asp:ListBox>
    
        

    </div>
    </form>
</body>
</html>
