<%@ Page Title="User Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="font-size: 100%">
        <h2 style="text-align: center;">USERS</h2>
        <br />
        <a href="addManager.aspx" style="text-align: right;">New Manager</a>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="userType" HeaderText="Position" SortExpression="userType" />
                <asp:BoundField DataField="empName" HeaderText="Name" SortExpression="empName" />
                <asp:BoundField DataField="surname" HeaderText="Surname" SortExpression="surname" />
                <asp:BoundField DataField="address" HeaderText="Home Address" SortExpression="address" />
                <asp:BoundField DataField="userName" HeaderText="Email Address" SortExpression="userName" />
                <asp:BoundField DataField="passKey" HeaderText="Password" SortExpression="passKey" />
                <asp:BoundField DataField="phnumber" HeaderText="Phone Number" SortExpression="phnumber" />
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/FleetDB.mdb" DeleteCommand="DELETE FROM `Managers` WHERE `ID` = ?" InsertCommand="INSERT INTO `Managers` (`ID`, `userName`, `passKey`, `userType`, `empName`, `surname`, `address`, `phnumber`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `ID`, `userName`, `passKey`, `userType`, `empName`, `surname`, `address`, `phnumber` FROM `Managers`" UpdateCommand="UPDATE `Managers` SET `userName` = ?, `passKey` = ?, `userType` = ?, `empName` = ?, `surname` = ?, `address` = ?, `phnumber` = ? WHERE `ID` = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="passKey" Type="String" />
                <asp:Parameter Name="userType" Type="String" />
                <asp:Parameter Name="empName" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phnumber" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="passKey" Type="String" />
                <asp:Parameter Name="userType" Type="String" />
                <asp:Parameter Name="empName" Type="String" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phnumber" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
</asp:Content>
