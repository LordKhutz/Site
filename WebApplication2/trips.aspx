<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trips.aspx.cs" Inherits="WebApplication2.trips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size:100%">
        <h1>New Employee</h1>
        <div style="width: 65%; left:18.5%; padding: 10px; position: relative; background-color: darkgray; box-shadow: 10px 10px 20px #a9bebe;">
            <div style ="width:49%; float:left; position:relative; clear:both;">
                <asp:Label ID="Label1" runat="server" Text="Vehicle Number"></asp:Label>
                <br />
                <asp:DropDownList ID="cbxVehicle" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="AccessDataSource1" DataTextField="vehicleNumber">
                </asp:DropDownList>
                <br />
                Driver<br />
                <asp:DropDownList ID="cbxDriver" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="AccessDataSource2" DataTextField="driverID">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Destination"></asp:Label>
                <br />
                <asp:TextBox ID="txtDest" runat="server"></asp:TextBox>
                <br />
                Origin<br />
                <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox>
                <br />
                start date<br />
                <asp:TextBox ID="dtStart" runat="server" TextMode="Date"></asp:TextBox>
                <br />
                
        </div>
        <div style ="width:49%; float:right; position:relative; height: 231px; top: 3px; left: -3px;">
            expacted end date<br />
             <asp:TextBox ID="dtEnd" runat="server" TextMode="Date"></asp:TextBox><br />    
            expacted fuel usage<br />
                <asp:TextBox ID="txtFuel" runat="server"></asp:TextBox>
                <br />
                milage before trip<br />
                <asp:TextBox ID="txtMilageBefore" runat="server"></asp:TextBox>
                <br />
                trip status<br />
                <asp:DropDownList ID="cbxTripStatus" runat="server">
                <asp:ListItem>Upcoming</asp:ListItem>
                <asp:ListItem>In progress</asp:ListItem>
                <asp:ListItem>Complete</asp:ListItem>
                </asp:DropDownList>
        </div>
        <div style="clear:both">
            <asp:Button ID="newTrip" runat="server" Text="Save Trip" OnClick="newTrip_Click"/>
        </div>
    </div>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\FleetDB.mdb" SelectCommand="SELECT `driverID` FROM `Trip`"></asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\FleetDB.mdb" SelectCommand="SELECT `vehicleNumber` FROM `Vehicles`"></asp:AccessDataSource>
        </div>
</asp:Content>
