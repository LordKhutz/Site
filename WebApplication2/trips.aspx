<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trips.aspx.cs" Inherits="WebApplication2.trips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <div>
        &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Vehicle Number"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Destination"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Origin<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        start date<br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        expacted end date<br />
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        expacted fuel usage<br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        milage before trip<br />
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        trip status<br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Upcoming</asp:ListItem>
            <asp:ListItem>In progress</asp:ListItem>
            <asp:ListItem>Complete</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="actual end date"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        actual fuel usage<br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        incidents during trip<br />
        <asp:TextBox ID="TextBox8" runat="server" Height="78px" TextMode="MultiLine" Width="224px"></asp:TextBox>
        <br />
        <br />
    </div>
        </div>
</asp:Content>
