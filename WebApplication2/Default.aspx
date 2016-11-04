<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Quick Access</h1>
        <hr />
        <h2>Reports</h2>     
            <asp:Button ID="btnVehicleInfo" runat="server" Height="81px" OnClick="btnVehicleInfo_Click" Text="Vehicle Info" Width="200px" BorderStyle="None" />
            &nbsp;<asp:Button ID="btnCompleteService" runat="server" Height="81px"  Text="Complete Service" Width="209px" OnClick="btnCompleteService_Click" BorderStyle="None" />
            &nbsp;<asp:Button ID="CompleteTrips" runat="server" Height="81px"  Text="Complete Trips" Width="219px" OnClick="CompleteTrips_Click" BorderStyle="None" />
            &nbsp;<asp:Button ID="btnPlannedService" runat="server" Height="81px" Text="Planned Service" Width="196px" OnClick="btnPlannedService_Click" BorderStyle="None" />
            &nbsp;<asp:Button ID="btnPlannedTrips" runat="server" Height="81px"  Text="Planned Trips" Width="171px" OnClick="btnPlannedTrips_Click" BorderStyle="None" />
            <br /><br /><asp:Button ID="btnService" runat="server" Height="81px"  Text="Service" Width="173px" OnClick="btnService_Click" BorderStyle="None" />
        <hr />
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
