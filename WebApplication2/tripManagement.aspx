<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tripManagement.aspx.cs" Inherits="WebApplication2.tripManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size: 100%">
        <a href="trips.aspx" style="text-align: right;">New Trip</a>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="tripOrigin" HeaderText="Origin" ReadOnly="True" SortExpression="tripOrigin" />
                <asp:BoundField DataField="tripDestination" HeaderText="Destination" ReadOnly="True" SortExpression="tripDestination" />
                <asp:BoundField DataField="vehicleID" HeaderText="Vehicle #" ReadOnly="True" SortExpression="vehicleID" />
                <asp:BoundField DataField="milageBeforeTrip" HeaderText="pre-Milage" ReadOnly="True" SortExpression="milageBeforeTrip" />
                <asp:BoundField DataField="milageAfterTrip" HeaderText="post-Milage" SortExpression="milageAfterTrip" />
                <asp:BoundField DataField="fuelUsageEstimate" HeaderText="Estimate Fuel Use" ReadOnly="True" SortExpression="fuelUsageEstimate" />
                <asp:BoundField DataField="fuelUsageActual" HeaderText="Fuel Usage" SortExpression="fuelUsageActual" />
                <asp:BoundField DataField="driverID" HeaderText="Driver" SortExpression="driverID" />
                <asp:BoundField DataField="tripStartDate" HeaderText="Start Date" ReadOnly="True" SortExpression="tripStartDate" />
                <asp:BoundField DataField="tripEndDate" HeaderText="End Date" SortExpression="tripEndDate" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\FleetDB.mdb" DeleteCommand="DELETE FROM `Trip` WHERE `ID` = ?" InsertCommand="INSERT INTO `Trip` (`ID`, `tripOrigin`, `tripDestination`, `vehicleID`, `milageBeforeTrip`, `milageAfterTrip`, `fuelUsageEstimate`, `fuelUsageActual`, `driverID`, `tripStartDate`, `tripEndDate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `ID`, `tripOrigin`, `tripDestination`, `vehicleID`, `milageBeforeTrip`, `milageAfterTrip`, `fuelUsageEstimate`, `fuelUsageActual`, `driverID`, `tripStartDate`, `tripEndDate` FROM `Trip`" UpdateCommand="UPDATE `Trip` SET `tripOrigin` = ?, `tripDestination` = ?, `vehicleID` = ?, `milageBeforeTrip` = ?, `milageAfterTrip` = ?, `fuelUsageEstimate` = ?, `fuelUsageActual` = ?, `driverID` = ?, `tripStartDate` = ?, `tripEndDate` = ? WHERE `ID` = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="tripOrigin" Type="String" />
                <asp:Parameter Name="tripDestination" Type="String" />
                <asp:Parameter Name="vehicleID" Type="String" />
                <asp:Parameter Name="milageBeforeTrip" Type="Int32" />
                <asp:Parameter Name="milageAfterTrip" Type="String" />
                <asp:Parameter Name="fuelUsageEstimate" Type="Decimal" />
                <asp:Parameter Name="fuelUsageActual" Type="Decimal" />
                <asp:Parameter Name="driverID" Type="Int32" />
                <asp:Parameter Name="tripStartDate" Type="DateTime" />
                <asp:Parameter Name="tripEndDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tripOrigin" Type="String" />
                <asp:Parameter Name="tripDestination" Type="String" />
                <asp:Parameter Name="vehicleID" Type="String" />
                <asp:Parameter Name="milageBeforeTrip" Type="Int32" />
                <asp:Parameter Name="milageAfterTrip" Type="String" />
                <asp:Parameter Name="fuelUsageEstimate" Type="Decimal" />
                <asp:Parameter Name="fuelUsageActual" Type="Decimal" />
                <asp:Parameter Name="driverID" Type="Int32" />
                <asp:Parameter Name="tripStartDate" Type="DateTime" />
                <asp:Parameter Name="tripEndDate" Type="DateTime" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
</asp:Content>
