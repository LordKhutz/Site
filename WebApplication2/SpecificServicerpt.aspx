<%@ Page Title="Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reportView.aspx.cs" Inherits="WebApplication2.reportView" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<rsweb:ReportViewer ID="ReportViewer6" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1083px" Height="676px">
		<LocalReport ReportPath="rptSpecificService.rdlc">
		</LocalReport>
        </rsweb:ReportViewer>
</asp:Content>

