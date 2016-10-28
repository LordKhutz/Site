<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleInfo.aspx.cs" Inherits="WebApplication2.VehicleInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size: 100%">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="registration_numb" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="vehicleNumber" HeaderText="Vehicle Number" SortExpression="vehicleNumber" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="registration_numb" HeaderText="Registration Number" ReadOnly="True" SortExpression="registration_numb" />
                <asp:BoundField DataField="make" HeaderText="Vehicle Make" SortExpression="make" />
                <asp:BoundField DataField="type" HeaderText="Vehicle Type" SortExpression="type" />
                <asp:BoundField DataField="model" HeaderText="Vehicle Model" SortExpression="model" />
                <asp:BoundField DataField="manufacturer" HeaderText="Manufacturer" SortExpression="manufacturer" />
                <asp:BoundField DataField="engine_size" HeaderText="Engine Size" SortExpression="engine_size" />
                <asp:BoundField DataField="milege" HeaderText="Milege" SortExpression="milege" />
                <asp:BoundField DataField="next_serviceMilage" HeaderText="Next Service Milage" SortExpression="next_serviceMilage" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/FleetDB.mdb" DeleteCommand="DELETE FROM `Vehicles` WHERE `registration_numb` = ?" InsertCommand="INSERT INTO `Vehicles` (`registration_numb`, `make`, `type`, `model`, `manufacturer`, `engine_size`, `milege`, `next_serviceMilage`, `vehicleNumber`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `registration_numb`, `make`, `type`, `model`, `manufacturer`, `engine_size`, `milege`, `next_serviceMilage`, `vehicleNumber` FROM `Vehicles`" UpdateCommand="UPDATE `Vehicles` SET `make` = ?, `type` = ?, `model` = ?, `manufacturer` = ?, `engine_size` = ?, `milege` = ?, `next_serviceMilage` = ?, `vehicleNumber` = ? WHERE `registration_numb` = ?">
            <DeleteParameters>
                <asp:Parameter Name="registration_numb" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="registration_numb" Type="String" />
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="manufacturer" Type="String" />
                <asp:Parameter Name="engine_size" Type="String" />
                <asp:Parameter Name="milege" Type="Int32" />
                <asp:Parameter Name="next_serviceMilage" Type="Int32" />
                <asp:Parameter Name="vehicleNumber" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="make" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="manufacturer" Type="String" />
                <asp:Parameter Name="engine_size" Type="String" />
                <asp:Parameter Name="milege" Type="Int32" />
                <asp:Parameter Name="next_serviceMilage" Type="Int32" />
                <asp:Parameter Name="vehicleNumber" Type="Int32" />
                <asp:Parameter Name="registration_numb" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
</asp:Content>
