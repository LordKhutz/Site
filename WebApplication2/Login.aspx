<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"  MasterPageFile="~/Site.Master" Inherits="WebApplication2.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center;">Sign in</h2>
    <div class="jumbotron">
        <div style="position: relative; width: 80%; height: 100%; left: 20%; text-align:center; font-size:75%;">
            <div style="margin: 0px; width: 66%; height: 263px; left: 0%;  padding: 10px; position: relative; background-color:darkgray; border-radius: 0px; box-shadow: 10px 10px 20px #a9bebe; top: 0px;" aria-disabled="True">
                email:
                <br />
                <asp:TextBox ID="txtEmail" runat="server" Width="75%"></asp:TextBox>
                <br />
                Password<br />
                <asp:TextBox ID="txtPassCode" TextMode="Password" runat="server" Width="75%"></asp:TextBox>
                <br />
                <br />
                <div style = "Width:55%; Height:20%; position: relative; left:22%;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Width="35%" Height="80%" style="float:left;"/>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="35%" Height="80%" style="float:right;"/>
                </div>
              </div>
            <br />
        </div>
     </div>
</asp:Content>
