<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity05-FileUpload.aspx.cs" Inherits="Week04_WorkWithFileSystem.Activity05_FileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Book Antiqua'; font-size: x-large; font-style: italic; font-weight: bold; color: #008000; text-decoration: underline">
    
        Choose file using below browse button and then click upload.<br />
        It will uploaded from client machine to the server.<br />
        <br />
        <br />
        <asp:FileUpload ID="fulFileUp" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
            Text="Upload" />
    
    </div>
    </form>
</body>
</html>
