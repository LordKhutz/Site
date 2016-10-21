<%@ Page Title="New Manager" Language="C#" AutoEventWireup="true" CodeBehind="addManager.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplication2.addManger" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: center;">New Manager</h2><br />
    <div class="jumbotron">
            <div style="width: 65%; padding: 10px; position: relative; background-color: darkgray; box-shadow: 10px 10px 20px #a9bebe; left: 17.5%;height: 366px">
                <div style ="width:49%; float:left; position:relative; clear:both;">
                    Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="294px"></asp:TextBox>
                    <br/>
                    Surname:<br />
                    <asp:TextBox ID="txtSurname" runat="server" Width="294px"></asp:TextBox>
                    <br />
                    Position:<br />
                    <asp:DropDownList ID="cbxPosition" runat="server" Width="294px">
                        <asp:ListItem>Vehicle information administrator </asp:ListItem>
                        <asp:ListItem>Trip/ usage manager </asp:ListItem>
                        <asp:ListItem>Service manager </asp:ListItem>
                        <asp:ListItem>Timesheet manager </asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <div style ="width:49%; float:right; position:relative; height: 264px; top: -44px; left: 0px;">
                    Address:<br />
                    <asp:TextBox ID="txtAddress" runat="server" Width="294px"></asp:TextBox>
                    <br />
                    Email Address:<br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="294px"></asp:TextBox>
                    <br />
                    Phone Number:<br />
                    <asp:TextBox ID="txtPhoneN" runat="server" Width="294px"></asp:TextBox>
                </div>
                <br />
                <br />
                <div style = "Width:93%; Height:15%; position: relative; clear:both;">
                    <asp:Button ID="btnAdd" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Save" Width="25%" Height="80%" style="float:left;" />
                    <asp:Button ID="btnCancel" runat="server" Text="Clear" OnClick="btnCancel_Click" UseSubmitBehavior="False" Width="25%" Height="80%" style="float:right;" />
               
                </div>
            </div>
            <br />
            <p>Please not, all information is required, the user to be added will recieve an email to change his/her password.<br/>Information Entered Here can be changed at a later stage but, please be as accurate as possible.</p>
    </div>
</asp:Content>
