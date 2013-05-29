<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="l4Data.dropdown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:strConn %>" 
        ProviderName="<%$ ConnectionStrings:strConn.ProviderName %>" 
    SelectCommand="SELECT CustomerID, CompanyName FROM Customers ORDER BY CompanyName"></asp:SqlDataSource>
    <asp:DropDownList ID="ddlCustomers" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
    DataValueField="CustomerID">
    </asp:DropDownList>
</asp:Content>
