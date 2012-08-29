<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Guest_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>This is the Guest page</h1>
    <p>Any annoymous users (not logged in) can browse this page</p>
    </div>

    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:history.go(-1);">Back</asp:HyperLink>
    
    </div>


    </form>
</body>
</html>
