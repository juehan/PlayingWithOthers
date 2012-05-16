<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentForm.aspx.cs" Inherits="beforeTest.payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Page">
        <h1> Payment</h1>
        <div id="Contents">
            <div id="LeftSide">
            
                <asp:Image ID="imgContactDetail" runat="server" ImageUrl="~/images/contactDetails.gif" /><br />
                <asp:Image ID="imgDelivery" runat="server" ImageUrl="~/images/delivery.gif" /><br />
                <asp:Image ID="imgPayment" runat="server" ImageUrl="~/images/payment.gif" /><br />
                <asp:Image ID="imgConfirm" runat="server" ImageUrl="~/images/confirm.gif" /><br />
            </div>
            <div id="RightSide">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="vContactDetail" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label><br />
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label><br />
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label><br />
                        <asp:TextBox ID="txtEmail" runat="server" Width="262px"></asp:TextBox><br />
                    </asp:View>
                    <asp:View ID="vDelivery" runat="server">
                        <asp:Label ID="Label4" runat="server" Text="Delivery Address:"></asp:Label><br />
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                    </asp:View>
                    <asp:View ID="vPayment" runat="server">
                        <asp:Label ID="Label5" runat="server" Text="Name on Card:"></asp:Label><br />
                        <asp:TextBox ID="txtCardName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label6" runat="server" Text="Card Number:"></asp:Label><br />
                        <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label7" runat="server" Text="Expiry Date:"></asp:Label><br />
                        <asp:TextBox ID="txtExpiry" runat="server"></asp:TextBox><br />
                    </asp:View>
                    <asp:View ID="vConfirm" runat="server">
                        <asp:Label ID="lblConfirm" runat="server" Text=""></asp:Label><br />
                    </asp:View>
                    <%--<asp:View ID="vFinal" runat="server">
                        <asp:Label ID="lblConfirm" runat="server" Text="Expiry Date:"></asp:Label><br />
                    </asp:View>--%>
                </asp:MultiView><br />
                <asp:ImageButton ID="imgNext" runat="server" ImageUrl="~/images/nextGreen.gif" 
                    onclick="imgNext_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
