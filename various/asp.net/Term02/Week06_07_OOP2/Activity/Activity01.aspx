<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity01.aspx.cs" Inherits="Activity01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Button ID="btnDisplay" runat="server" onclick="btnSubmit_Click" 
            Text="Display" />
&nbsp;
        <asp:Button ID="btnSort" runat="server" onclick="btnSort_Click" Text="Sort" />
&nbsp;
        <asp:Button ID="btnSaveToFile" runat="server" onclick="btnSaveToFile_Click" 
            Text="Save to File" />
        <br />
        <br />
        <asp:Label ID="lblText" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
