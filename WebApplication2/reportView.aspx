<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reportView.aspx.cs" Inherits="WebApplication2.reportView" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="90%">
            <LocalReport ReportPath="VehicleStatus.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet2" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSet1TableAdapters.CompanyInfoTableAdapter" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}">
            <InsertParameters>
                <asp:Parameter Name="CompName" Type="String" />
                <asp:Parameter Name="Tel" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="emailAddress" Type="String" />
                <asp:Parameter Name="Logo" Type="Object" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="WebApplication2.FleetDBDataSet1TableAdapters.VehiclesTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
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
    </div>
</asp:Content>
