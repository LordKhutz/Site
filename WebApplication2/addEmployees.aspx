<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addEmployees.aspx.cs" Inherits="WebApplication2.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div style="width: 65%; padding: 10px; position: relative; background-color: darkgray; box-shadow: 10px 10px 20px #a9bebe; left: 17.5%;height: 366px">
            <div style ="width:49%; float:left; position:relative; clear:both;">
                    Name:<br />
                <asp:TextBox ID="txtName" runat="server" Width="294px"></asp:TextBox>
                <br/>Surname:<br />
                <asp:TextBox ID="txtSurname" runat="server" Width="294px"></asp:TextBox>
                <br />Position:<br />
                <asp:DropDownList ID="cbxPosition" runat="server" Width="294px">
                    <asp:ListItem Selected="True">Machenic</asp:ListItem>
                    <asp:ListItem>Driver</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div style ="width:49%; float:right; position:relative; height: 264px; top: -44px; left: 0px;">
                    Address:<br />
                <asp:TextBox ID="txtAddress" runat="server" Width="294px"></asp:TextBox>
                <br />Phone Number:<br />
                <asp:TextBox ID="txtPhoneN" runat="server" Width="294px"></asp:TextBox>
            </div>
            <br />
            <br />
            <div style = "Width:93%; Height:15%; position: relative; clear:both;">
                <asp:Button ID="btnAdd" runat="server" CausesValidation="False" Text="Save" Width="25%" Height="80%" style="float:left;" OnClick="btnAdd_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Clear" UseSubmitBehavior="False" Width="25%" Height="80%" style="float:right;" OnClick="btnCancel_Click" />
            </div>
        </div>
        <br />
        <p>
            Please not, all information is required<br/>Information Entered Here can be changed at a later stage but, please be as accurate as possible.</p>
    </div>
</asp:Content>
