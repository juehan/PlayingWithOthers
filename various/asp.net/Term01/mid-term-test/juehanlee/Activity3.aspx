<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity3.aspx.cs" Inherits="juehanlee.Activity3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/paradiseHolidays.jpg" />
    
    </div>
    <div id = "title">
    <asp:Label ID="Label1" runat="server" Text="Booking Form"></asp:Label>
    </div>
    <br />
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="4" BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        Height="95px" onfinishbuttonclick="Wizard1_FinishButtonClick" Width="346px">
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
            ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="Personal details">
                <asp:Literal ID="Literal1" runat="server" Text="First Name:"></asp:Literal>
                <br />
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Literal ID="Literal2" runat="server" Text="Last Name:"></asp:Literal>
                <br />
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <br />
                <br />
                Billing Address:<br />
                <asp:TextBox ID="txtAddress" runat="server" Height="62px" Width="186px"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Contact details">
                <asp:Literal ID="Literal3" runat="server" Text="Contact Number:"></asp:Literal>
                <br />
                <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                <br />
                <br />
                Email:<br />
                <asp:TextBox ID="txtEmail" runat="server" Width="205px"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Stay">
                <asp:Literal ID="Literal4" runat="server" Text="Date of stay:"></asp:Literal>
                <br />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <br />
                <asp:Literal ID="Literal5" runat="server" Text="Length of Stay: "></asp:Literal>
                <asp:TextBox ID="txtStayLength" runat="server"></asp:TextBox>
                <br />
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Type of booking">
                <asp:Literal ID="Literal6" runat="server" Text="Number of people staying:"></asp:Literal>
                <br />
                <asp:TextBox ID="txtNumOfPeople" runat="server" Width="153px"></asp:TextBox>
                <br />
                <br />
                Type of room:<br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Twin share</asp:ListItem>
                    <asp:ListItem>2 adults 2 kids</asp:ListItem>
                    <asp:ListItem>2 adults 3 kids</asp:ListItem>
                    <asp:ListItem>2 adults 4 kids</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                Facilities:<br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Kitchen</asp:ListItem>
                    <asp:ListItem>Ocean View</asp:ListItem>
                    <asp:ListItem>Breakfast buffet</asp:ListItem>
                    <asp:ListItem>Delux</asp:ListItem>
                </asp:CheckBoxList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" StepType="Complete" Title="Confirmation">
                <asp:Label ID="lblFinished" runat="server">finished</asp:Label>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <br />
    </form>
</body>
</html>
