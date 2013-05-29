<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="grid1.aspx.cs" Inherits="l4Data.grid1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:strConn %>" 
        ProviderName="<%$ ConnectionStrings:strConn.ProviderName %>" 
        
    SelectCommand="SELECT ProductID, ProductName, UnitPrice, Discontinued FROM Products ORDER BY ProductName"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
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
