<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="timeSheet.aspx.cs" Inherits="WebApplication2.timeSheet" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <div class="jumbotron">
        <div style="position: relative; background-color: darkgray; text-align:center; box-shadow: 10px 10px 20px #a9bebe; top: 5px; left: 321px; width: 449px;">
            <h2>New Entry</h2>
            <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label><i>(Employee number)</i>
            <br />
            <asp:DropDownList ID="cbxEmpID" runat="server" DataSourceID="AccessDataSource1" DataTextField="ID" Width="205px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Hours Worked"></asp:Label>
            <br />
            <asp:TextBox ID="txtWorkedHours" runat="server" Width="194px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
            <br />
            <asp:TextBox ID="dtDate" runat="server" Width="192px" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <br />
        </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\FleetDB.mdb" DeleteCommand="DELETE FROM `Employees` WHERE `ID` = ?" InsertCommand="INSERT INTO `Employees` (`ID`, `empName`, `surname`) VALUES (?, ?, ?)" SelectCommand="SELECT `ID`, `empName`, `surname` FROM `Employees`" UpdateCommand="UPDATE `Employees` SET `empName` = ?, `surname` = ? WHERE `ID` = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="empName" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="empName" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
    </div>
</asp:Content>

