<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reportView.aspx.cs" Inherits="WebApplication2.reportView" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%string val = Session["rpt"].ToString(); %>
        <%if (val == "CompleteService")
            {%>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptCompleteServices.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="CompName" Type="String" />
                <asp:Parameter Name="Tel" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="emailAddress" Type="String" />
                <asp:Parameter Name="Logo" Type="Object" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.VehicleServiceTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_serviceCode" Type="String" />
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
                <asp:Parameter Name="Original_serviceCode" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    <%} %>
    <%if (val == "CompleteTrips")
        {%>
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptcompleteTrips.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="CompName" Type="String" />
                <asp:Parameter Name="Tel" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="emailAddress" Type="String" />
                <asp:Parameter Name="Logo" Type="Object" />
            </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.TripTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
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
            <asp:Parameter Name="tripStatus" Type="String" />
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
            <asp:Parameter Name="tripStatus" Type="String" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <%} %>
    <%if (val == "PlannedService")
        {%>
        <rsweb:ReportViewer ID="ReportViewer3" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptPlannedService.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="CompName" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="emailAddress" Type="String" />
            <asp:Parameter Name="Logo" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.VehicleServiceTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_serviceCode" Type="String" />
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
            <asp:Parameter Name="Original_serviceCode" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <%} %>
    <%if (val == "PlannedTrips")
        {%>
        <rsweb:ReportViewer ID="ReportViewer4" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptPlannedTrips.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="CompName" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="emailAddress" Type="String" />
            <asp:Parameter Name="Logo" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.TripTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
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
            <asp:Parameter Name="tripStatus" Type="String" />
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
            <asp:Parameter Name="tripStatus" Type="String" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <%} %>
    <%if (val == "Service")
        {%>
        <rsweb:ReportViewer ID="ReportViewer5" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptService.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource9" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource10" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="CompName" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="emailAddress" Type="String" />
            <asp:Parameter Name="Logo" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.VehicleServiceTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_serviceCode" Type="String" />
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
            <asp:Parameter Name="Original_serviceCode" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <%} %>
    <%if (val == "SpecificService")
        {%>
        <rsweb:ReportViewer ID="ReportViewer6" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptSpecificService.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>
    <%} %>
        <br />
    <%if (val == "VehicleInfo")
        {%>
        <rsweb:ReportViewer ID="ReportViewer8" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
            <LocalReport ReportPath="rptVehicleStatus.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource11" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource12" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.CompanyInfoTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="CompName" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="emailAddress" Type="String" />
            <asp:Parameter Name="Logo" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSetTableAdapters.VehiclesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_registration_numb" Type="String" />
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
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="make" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="manufacturer" Type="String" />
            <asp:Parameter Name="engine_size" Type="String" />
            <asp:Parameter Name="milege" Type="Int32" />
            <asp:Parameter Name="next_serviceMilage" Type="Int32" />
            <asp:Parameter Name="Original_registration_numb" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <%} %>
    </asp:Content>
