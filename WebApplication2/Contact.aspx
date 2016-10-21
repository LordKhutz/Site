<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <address>
        <asp:Label ID="lblAddr" runat="server" Text=""></asp:Label>
        <abbr title="Phone"><br />Tel:</abbr>
        <%: Session["Tel"].ToString() %>
    </address>

    <address>
        <strong>Support:</strong>   <a href=<%: "mailto:" + Session["mailto"].ToString()%>><%:Session["mailto"].ToString()%></a><br />
    </address>
</asp:Content>
