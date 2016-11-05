<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleService.aspx.cs" Inherits="WebApplication2.VehicleService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size: 100%;">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Report for Selected Service</asp:LinkButton>
        <div style="font-size: 75%">
            <h2>INDIVIDUAL VIEW</h2>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="serviceCode" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="16px" Width="490px" AllowPaging="True">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <EmptyDataTemplate>
                    Please enter a new record<br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="New" Text="New Record" />
                </EmptyDataTemplate>
                <Fields>
                    <asp:BoundField DataField="serviceCode" HeaderText="serviceCode" ReadOnly="True" SortExpression="serviceCode" />
                    <asp:BoundField DataField="serviceType" HeaderText="serviceType" SortExpression="serviceType" />
                    <asp:BoundField DataField="serviceDetails" HeaderText="serviceDetails" SortExpression="serviceDetails" />
                    <asp:BoundField DataField="serviceCost" HeaderText="serviceCost" SortExpression="serviceCost" />
                    <asp:BoundField DataField="machenicID" HeaderText="machenicID" SortExpression="machenicID" />
                    <asp:BoundField DataField="vehicleID" HeaderText="vehicleID" SortExpression="vehicleID" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="serviceTime" HeaderText="serviceTime" SortExpression="serviceTime" />
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ButtonType="Button" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FleetDBConnectionString %>" DeleteCommand="DELETE FROM [VehicleService] WHERE [serviceCode] = ? AND (([serviceType] = ?) OR ([serviceType] IS NULL AND ? IS NULL)) AND (([serviceDetails] = ?) OR ([serviceDetails] IS NULL AND ? IS NULL)) AND (([serviceCost] = ?) OR ([serviceCost] IS NULL AND ? IS NULL)) AND (([machenicID] = ?) OR ([machenicID] IS NULL AND ? IS NULL)) AND (([vehicleID] = ?) OR ([vehicleID] IS NULL AND ? IS NULL)) AND (([status] = ?) OR ([status] IS NULL AND ? IS NULL)) AND (([serviceTime] = ?) OR ([serviceTime] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [VehicleService] ([serviceCode], [serviceType], [serviceDetails], [serviceCost], [machenicID], [vehicleID], [status], [serviceTime]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:FleetDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [VehicleService]" UpdateCommand="UPDATE [VehicleService] SET [serviceType] = ?, [serviceDetails] = ?, [serviceCost] = ?, [machenicID] = ?, [vehicleID] = ?, [status] = ?, [serviceTime] = ? WHERE [serviceCode] = ? AND (([serviceType] = ?) OR ([serviceType] IS NULL AND ? IS NULL)) AND (([serviceDetails] = ?) OR ([serviceDetails] IS NULL AND ? IS NULL)) AND (([serviceCost] = ?) OR ([serviceCost] IS NULL AND ? IS NULL)) AND (([machenicID] = ?) OR ([machenicID] IS NULL AND ? IS NULL)) AND (([vehicleID] = ?) OR ([vehicleID] IS NULL AND ? IS NULL)) AND (([status] = ?) OR ([status] IS NULL AND ? IS NULL)) AND (([serviceTime] = ?) OR ([serviceTime] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_serviceCode" Type="String" />
                <asp:Parameter Name="original_serviceType" Type="String" />
                <asp:Parameter Name="original_serviceType" Type="String" />
                <asp:Parameter Name="original_serviceDetails" Type="String" />
                <asp:Parameter Name="original_serviceDetails" Type="String" />
                <asp:Parameter Name="original_serviceCost" Type="String" />
                <asp:Parameter Name="original_serviceCost" Type="String" />
                <asp:Parameter Name="original_machenicID" Type="Int32" />
                <asp:Parameter Name="original_machenicID" Type="Int32" />
                <asp:Parameter Name="original_vehicleID" Type="String" />
                <asp:Parameter Name="original_vehicleID" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_serviceTime" Type="DateTime" />
                <asp:Parameter Name="original_serviceTime" Type="DateTime" />
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
                <asp:Parameter Name="original_serviceCode" Type="String" />
                <asp:Parameter Name="original_serviceType" Type="String" />
                <asp:Parameter Name="original_serviceType" Type="String" />
                <asp:Parameter Name="original_serviceDetails" Type="String" />
                <asp:Parameter Name="original_serviceDetails" Type="String" />
                <asp:Parameter Name="original_serviceCost" Type="String" />
                <asp:Parameter Name="original_serviceCost" Type="String" />
                <asp:Parameter Name="original_machenicID" Type="Int32" />
                <asp:Parameter Name="original_machenicID" Type="Int32" />
                <asp:Parameter Name="original_vehicleID" Type="String" />
                <asp:Parameter Name="original_vehicleID" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
                <asp:Parameter Name="original_serviceTime" Type="DateTime" />
                <asp:Parameter Name="original_serviceTime" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
