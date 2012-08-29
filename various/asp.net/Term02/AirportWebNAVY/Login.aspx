<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AirportWeb.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        .style2
        {
            width: 331px;
        }
        .style3
        {
            height: 40px;
            width: 331px;
        }
        .style4
        {
            width: 493px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="LoginAirport" runat="server" 
         CreateUserUrl="~/Register.aspx"
         HelpPageUrl = "~/LoginHelpPage.aspx"
         PasswordRecoveryUrl = "~/ForgotPassword.aspx"
         

            onloginerror="LoginAirport_LoginError" 
            onauthenticate="LoginAirport_Authenticate">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td class="style4">
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2">
                                        Log In</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="LoginAirport">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="LoginAirport">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                
                                
                                <%--Beginning of adding image control for bot exclusion--%>
                                
                                <tr>
                                    <td align="right" class="style1">
                                        <asp:Label ID="lblBotExclude" runat="server" Text="Bot Exclusion Test:">
                                        </asp:Label>
                                    </td>
                                    <td align="center" class="style3">
                                        <asp:Image ID="imgCode" runat="server" ImageUrl="~/Random.gif" />

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="lblEnterCode" runat="server" Text="Enter code shown above:">
                                        </asp:Label>
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtVerificationCode" runat="server" Width="197px"></asp:TextBox>
                                    </td>                                
                                </tr>
                                                      
                                
                                <%--End of image control for bot exclusion--%>

                                
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                            ValidationGroup="LoginAirport" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
    
    </div>


    <div>
        <h2>
            <asp:Label ID="lblCode" runat="server" Text="Code"></asp:Label>
        </h2>
        <h2>&nbsp;</h2>
        <h2>Adding Image Verification to a Login Control</h2>
    </div>
    <div>
    Image Verification allows us to ensure that a person is trying to log in to our web site and not an automated robot program.  We can achieve this by providing an image of some distored text and requiring our user to enter the displayed text into a text box which we can then validate on our server when the page posts back via the login request.  It is difficult (but not impossible) for an automated robot program to 'character recognise' the distorted characters displayed in the image, but very easy, and usually quite quick for a human to make the interpretation of the characters displayed.</p>
        <br />
        <p>
        
            The first step is to convert our login control to a template.&nbsp; Select the 
            &#39;Convert To Template&#39; item from the Smart Tag menu of the Login Control.ontrol.</p>
        <p>
        
     Now we can add the controls required for the Image Verification to our Login 
            Control.&nbsp; Add an Image control (imgCode) and associated label (text=&#39;Bot Exclusion 
            Test:&#39;).&nbsp; Add a text box (txtVerificationCode) and associated Label (lblEnterCode).
            </p>
        <p>
        
            Now we can modify our code to include a class (verification) that will include 
            the code to generate random combinations of characters and then convert these to 
            a &#39;distrorted&#39; (and partially rotated) image.&nbsp; To achieve this we will use 
            some of Microsoft&#39;s GDI+ code (refernced via the System.Drawing namespace).&nbsp; 
            We will also use some classes from the System.Security.Cryptography namespace to 
            help randomly generate the characters which we will display in our image.</p>
        <p>
        
            Since we have modified our Login control (LoginAirport) we will now have to 
            write custom code to first check that the user has entered the correct 
            characters as displayed in the image </p>
    </div>



    </form>
</body>
</html>
