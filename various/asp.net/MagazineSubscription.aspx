<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MagazineSubscription.aspx.cs" Inherits="beforeTest.MagazineSubscription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Page">
        <div id="header3">
        
        </div>
        <div id="body">
            <asp:Label ID="Label4" runat="server" Text="Subscription Form" 
                Font-Size="X-Large" Font-Bold="True"></asp:Label><br />

            <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" 
                BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
                Height="99px" Width="347px" ActiveStepIndex="0" 
                onfinishbuttonclick="Wizard1_FinishButtonClick">
                <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                    BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                    HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284E98" />
                <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                    ForeColor="White" />
                <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" BackColor="White" 
                        BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                        CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="#284E98" Text="Next" />
                </StartNavigationTemplate>
                <StepStyle Font-Size="0.8em" ForeColor="#333333" />
                <WizardSteps>
                    <asp:WizardStep runat="server" Title="Personal details">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label><br />
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label><br />
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label3" runat="server" Text="Billing Address:"></asp:Label><br />
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="contact details">
                        <asp:Label ID="Label5" runat="server" Text="Contact Number:"></asp:Label><br />
                        <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label><br />
                        <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox><br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Subscription">
                        <asp:Label ID="Label7" runat="server" Text="Type of subscription:"></asp:Label><br />
                        <asp:CheckBoxList ID="ChksubscriptList" runat="server">
                            <asp:ListItem>PC World</asp:ListItem>
                            <asp:ListItem>New Scientist</asp:ListItem>
                            <asp:ListItem>TV Week</asp:ListItem>
                            <asp:ListItem>Who</asp:ListItem>
                        </asp:CheckBoxList>

                        <asp:Label ID="Label8" runat="server" Text="Length of subscription:"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>3months</asp:ListItem>
                            <asp:ListItem>6months</asp:ListItem>
                            <asp:ListItem>1year</asp:ListItem>
                            <asp:ListItem>2years</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Confirmation">
                        <asp:Label ID="lblFinished" runat="server" Text="finished"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </div>
    </form>
</body>
</html>
