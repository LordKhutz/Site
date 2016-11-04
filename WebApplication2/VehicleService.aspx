<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleService.aspx.cs" Inherits="WebApplication2.VehicleService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size: 100%;">
         &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Report for Selected Service</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="serviceCode" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="serviceCode" HeaderText="serviceCode" ReadOnly="True" SortExpression="serviceCode" />
                <asp:BoundField DataField="serviceType" HeaderText="serviceType" SortExpression="serviceType" />
                <asp:BoundField DataField="serviceDetails" HeaderText="serviceDetails" SortExpression="serviceDetails" />
                <asp:BoundField DataField="serviceCost" HeaderText="serviceCost" SortExpression="serviceCost" />
                <asp:BoundField DataField="machenicID" HeaderText="machenicID" SortExpression="machenicID" />
                <asp:BoundField DataField="vehicleID" HeaderText="vehicleID" SortExpression="vehicleID" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="serviceTime" HeaderText="serviceTime" SortExpression="serviceTime" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\FleetDB.mdb" DeleteCommand="DELETE FROM `VehicleService` WHERE `serviceCode` = ?" InsertCommand="INSERT INTO `VehicleService` (`serviceCode`, `serviceType`, `serviceDetails`, `serviceCost`, `machenicID`, `vehicleID`, `status`, `serviceTime`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `serviceCode`, `serviceType`, `serviceDetails`, `serviceCost`, `machenicID`, `vehicleID`, `status`, `serviceTime` FROM `VehicleService`" UpdateCommand="UPDATE `VehicleService` SET `serviceType` = ?, `serviceDetails` = ?, `serviceCost` = ?, `machenicID` = ?, `vehicleID` = ?, `status` = ?, `serviceTime` = ? WHERE `serviceCode` = ?">
            <DeleteParameters>
                <asp:Parameter Name="serviceCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="serviceCode" Type="String" />
                <asp:Parameter Name="serviceType" Type="String" />
                <asp:Parameter Name="serviceDetails" Type="String" />
                <asp:Parameter Name="serviceCost" Type="String" />
                <asp:Parameter Name="machenicID" Type="Int32" />
                <asp:Parameter Name="vehicleID" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="serviceTime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="serviceType" Type="String" />
                <asp:Parameter Name="serviceDetails" Type="String" />
                <asp:Parameter Name="serviceCost" Type="String" />
                <asp:Parameter Name="machenicID" Type="Int32" />
                <asp:Parameter Name="vehicleID" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="serviceTime" Type="DateTime" />
                <asp:Parameter Name="serviceCode" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>

    </div>
</asp:Content>
