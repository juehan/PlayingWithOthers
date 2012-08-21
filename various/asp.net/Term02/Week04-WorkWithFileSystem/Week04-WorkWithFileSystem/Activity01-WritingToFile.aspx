<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity01-WritingToFile.aspx.cs" Inherits="Week04_WorkWithFileSystem.Activity01_WritingToFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    It will write to a file whatever has been entered in a textboxt by user<br />
        <br />
&nbsp;<asp:TextBox ID="txtInput" runat="server" Width="448px"></asp:TextBox>
        <br />
        <br />
        After you typed something in above, press below button<br />
        <br />
        <asp:Button ID="btnWrite" runat="server" onclick="btnWrite_Click" 
            Text="Write To File" />
    </div>
    </form>
</body>
</html>
