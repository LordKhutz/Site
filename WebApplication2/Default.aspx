<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Quick Access</h1>
        <h2>Upcoming trips will appear here for easy access.</h2>
        <hr />
        <h2>Reports</h2>     
            <asp:Button ID="btnVehicleInfo" runat="server" Height="81px" OnClick="btnVehicleInfo_Click" Text="Vehicle Info" Width="171px" />
            <asp:Button ID="btnCompleteService" runat="server" Height="81px"  Text="Complete Service" Width="171px" OnClick="btnCompleteService_Click" />
            <asp:Button ID="CompleteTrips" runat="server" Height="81px"  Text="Complete Trips" Width="171px" OnClick="CompleteTrips_Click" />
            <asp:Button ID="btnPlannedService" runat="server" Height="81px" Text="Planned Service" Width="171px" OnClick="btnPlannedService_Click" />
            <asp:Button ID="btnPlannedTrips" runat="server" Height="81px"  Text="Planned Trips" Width="171px" OnClick="btnPlannedTrips_Click" />
            <asp:Button ID="btnService" runat="server" Height="74px"  Text="Service" Width="173px" OnClick="btnService_Click" />
        <hr />
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
