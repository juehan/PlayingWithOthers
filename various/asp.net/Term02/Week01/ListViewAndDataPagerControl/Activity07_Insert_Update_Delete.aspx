<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity07_Insert_Update_Delete.aspx.cs" Inherits="Activity07_Insert_Update_Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="JSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            SelectCommand="SELECT [CategoryName], [Description] FROM [Categories]">
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CategoryID" InsertItemPosition="LastItem">

            <LayoutTemplate>
                <div>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server">
                    </asp:PlaceHolder>
                </div>
            </LayoutTemplate>

            <%--Item template--%>
            
            <ItemTemplate>
                <%# Eval("categoryName") %><br />
                <%# Eval("description") %><br />
                
                <div>
                    <asp:LinkButton ID="lkbEdit" runat="server" Text="Edit" CommandName="Edit">
                    </asp:LinkButton>
                
                    <asp:LinkButton ID="lkbDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return window.confirm('Are you sure?');">
                    </asp:LinkButton>
                </div>
            </ItemTemplate>


            <%--Edit Item template--%>

            <EditItemTemplate>
                <div id="selected">
                    <asp:Label ID="lblCategoryName" AssociatedControlID="txtCategoryName" runat="server" Text="Category name:">
                    </asp:Label>
                    <asp:TextBox ID="txtCategoryName" runat="server" Text='<%# Bind("categoryName")%>'>
                    </asp:TextBox>
                    <br />
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" Text="Description:">
                    </asp:Label>
                    <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("description")%>'>
                    </asp:TextBox>
                    <br />
                    <asp:LinkButton ID="lkbUpdate" runat="server" Text="Update" CommandName="Update">
                    </asp:LinkButton>
                    <asp:LinkButton ID="lkbCancel" runat="server" Text="Cancel" CommandName="Cancel">
                    </asp:LinkButton>
                </div>
            </EditItemTemplate>


            <%--Insert Item template--%>

            <InsertItemTemplate>
                <div class="insertStyle">
                    <h2>
                        Add new Category
                    </h2>
                    <asp:Label ID="lblCategoryName" AssociatedControlID="txtCategoryName" runat="server" Text="Category Name:">
                    </asp:Label>
                    <asp:TextBox ID="txtCategoryName" runat="server" Text='<%#Bind("categoryName")%>'>'
                    </asp:TextBox>
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" Text="Description:">
                    </asp:Label>
                    <asp:TextBox ID="txtDescription" runat="server" Text='<%#Bind("description")%>'>'
                    </asp:TextBox>
                    <br />
                    <asp:LinkButton ID="lkbInsert" runat="server" Text="Insert" CommandName="Insert">
                    </asp:LinkButton>
                </div>
            </InsertItemTemplate>



        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
