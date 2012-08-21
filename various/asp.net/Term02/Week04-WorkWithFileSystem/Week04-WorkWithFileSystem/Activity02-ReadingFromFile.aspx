<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity02-ReadingFromFile.aspx.cs" Inherits="Week04_WorkWithFileSystem.Activity02_ReadingFromFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Reading from a file which is created at Activity 01<br />
        <br />
        <asp:Label ID="lblContents" runat="server"></asp:Label>
        <br />
        <br />
        Press this button to get content from file: 
        <asp:Button ID="btnRead" runat="server" onclick="btnRead_Click" 
            Text="Read from file" Width="129px" />
    
    </div>
    </form>
</body>
</html>
