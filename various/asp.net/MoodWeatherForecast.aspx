<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoodWeatherForecast.aspx.cs" Inherits="beforeTest.MoodWeather" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Page">
        <div id="header">
        
        </div>
        <div id="body">
            <asp:Label ID="lblSelect" runat="server" Text="Select the weather:"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddMoodList" runat="server">
                <asp:ListItem Value="~/images/sunny.jpg">Sunny</asp:ListItem>
                <asp:ListItem Value="~/images/cloudy.jpg">Cloudy</asp:ListItem>
                <asp:ListItem Value="~/images/rain.jpg">Rain</asp:ListItem>
                <asp:ListItem Value="~/images/snow.jpg">Snow</asp:ListItem>
                <asp:ListItem Value="~/images/partly.jpg">Partly Cloudy</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Button ID="btn" runat="server" Text="Your Mood" 
                onclick="btn_Click" /><br /><br />

            <asp:Label ID="lblOutput" runat="server" Text="Today is to be a great day"></asp:Label><br /><br />  
            <asp:Image ID="imgMood" runat="server" ImageUrl="~/images/sunny.jpg" /><br />
        </div>
    </div>
    </form>
</body>
</html>
