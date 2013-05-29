<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="supplier_products.aspx.cs" Inherits="l4Data.supplier_products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:strConn %>" 
        ProviderName="<%$ ConnectionStrings:strConn.ProviderName %>" 
        SelectCommand="SELECT SupplierID, CompanyName FROM Suppliers ORDER BY CompanyName"></asp:SqlDataSource>

    <asp:DropDownList ID="ddlSupliers" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
        DataValueField="SupplierID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:strConn %>" 
        ProviderName="<%$ ConnectionStrings:strConn.ProviderName %>" 
        SelectCommand="SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY ProductName"></asp:SqlDataSource>
    <asp:GridView ID="gvProducts" runat="server" AllowPaging="True" 
        AllowSorting="True" DataSourceID="SqlDataSource2" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="Product Name" DataField="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductID" Visible="false" />
            <asp:TemplateField HeaderText="Unit Price" SortExpression="UnitPrice">
                <ItemTemplate>
                    <asp:Label ID="lblUnitPrice" runat="server"
                         Text='<%# String.Format("{0:c}", Eval("UnitPrice")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
