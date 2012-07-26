<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Activity09_ListView_for_product_table.aspx.cs" Inherits="Activity09_ListView_for_product_table" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="JSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyNames="ProductID">


            


            <EditItemTemplate>
                <span style="">ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" 
                    Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                    Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                    Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                    Text='<%# Bind("ReorderLevel") %>' />
                <br />
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Bind("Discontinued") %>' Text="Discontinued" />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            
            
            
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>



            <InsertItemTemplate>
                <span style="">ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                    Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                    Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                    Text='<%# Bind("ReorderLevel") %>' />
                <br />
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Bind("Discontinued") %>' Text="Discontinued" />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>



            <ItemTemplate>
            
                <span style="">MyProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                <div class="boldStyle">
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Eval("ProductName") %>' />
                </div>
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" 
                    Text='<%# Eval("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Eval("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                    Text='<%# Eval("QuantityPerUnit") %>' />
                <br />
                UnitsInStock:
                <asp:Label ID="UnitsInStockLabel" runat="server" 
                    Text='<%# Eval("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                    Text='<%# Eval("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:Label ID="ReorderLevelLabel" runat="server" 
                    Text='<%# Eval("ReorderLevel") %>' />
                <br />
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Eval("Discontinued") %>' Enabled="false" Text="Discontinued" />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <br />
                <br />
                </span>
            </ItemTemplate>
            
            
            
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>



            <SelectedItemTemplate>
                <span style="">ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Eval("ProductName") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" 
                    Text='<%# Eval("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Eval("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                    Text='<%# Eval("QuantityPerUnit") %>' />
                <br />
                UnitsInStock:
                <asp:Label ID="UnitsInStockLabel" runat="server" 
                    Text='<%# Eval("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                    Text='<%# Eval("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:Label ID="ReorderLevelLabel" runat="server" 
                    Text='<%# Eval("ReorderLevel") %>' />
                <br />
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Eval("Discontinued") %>' Enabled="false" Text="Discontinued" />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>

            

        </asp:ListView>
        
        
        <%--SQL DATA SOURCE--%>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NWConnectionString %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" 
            InsertCommand="INSERT INTO [Products] ([ProductName], [UnitPrice], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (@ProductName, @UnitPrice, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)" 
            SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM [Products]" 
            UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
