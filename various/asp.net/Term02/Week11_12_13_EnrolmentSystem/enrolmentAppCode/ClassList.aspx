<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassList.aspx.cs" Inherits="ClassList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        View Course Class List<br />
        <br />
        Select a course:
        <asp:DropDownList ID="ddlCourse" runat="server" DataSourceID="odsCourse" 
            DataTextField="courseName" DataValueField="courseID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="odsCourse" runat="server" 
            SelectMethod="GetAllCourses" TypeName="Course"></asp:ObjectDataSource>
        <br />
        <br />
        Class List<br />
        <asp:GridView ID="gvStudent" runat="server" DataSourceID="odsStudent" 
            AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="firstName" HeaderText="First Name" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="email" HeaderText="Email" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:ObjectDataSource ID="odsStudent" runat="server" 
            SelectMethod="retrieveList" TypeName="Student">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCourse" Name="courseID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
