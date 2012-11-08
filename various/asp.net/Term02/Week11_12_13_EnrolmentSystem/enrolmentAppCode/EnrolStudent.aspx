<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnrolStudent.aspx.cs" Inherits="EnrolStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enrol student into group<br />
        <br />
        <br />
        Select a course from the list:<br />
        <asp:GridView ID="gvCourse" runat="server" DataKeyNames="courseID" 
            DataSourceID="odsCourse" 
            onselectedindexchanged="gvCourse_SelectedIndexChanged" 
            AutoGenerateColumns="False" ondatabound="gvCourse_DataBound" ShowHeader="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField HeaderText="Course Name" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsCourse" runat="server" 
            SelectMethod="retrieveCourses" TypeName="Course"></asp:ObjectDataSource>
        <br />
        <asp:GridView ID="gvClass" runat="server" DataSourceID="odsClass" 
            ondatabound="gvClass_DataBound">
        </asp:GridView>
        <asp:ObjectDataSource ID="odsClass" runat="server" SelectMethod="retrieveList" 
            TypeName="Student">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvCourse" Name="courseID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        Add student to the selected group: 
        <asp:DropDownList ID="ddlNewStudents" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" 
            Text="Add to List" />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
