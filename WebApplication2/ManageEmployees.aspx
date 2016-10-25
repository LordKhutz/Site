﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageEmployees.aspx.cs" Inherits="WebApplication2.ManageEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userType" HeaderText="Position" SortExpression="userType" />
            <asp:BoundField DataField="empName" HeaderText="Name" SortExpression="empName" />
            <asp:BoundField DataField="surname" HeaderText="Surname" SortExpression="surname" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="phnumber" HeaderText="Phone Number" SortExpression="phnumber" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\FleetDB.mdb" DeleteCommand="DELETE FROM `Employees` WHERE `ID` = ?" InsertCommand="INSERT INTO `Employees` (`ID`, `userType`, `empName`, `surname`, `address`, `phnumber`) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `ID`, `userType`, `empName`, `surname`, `address`, `phnumber` FROM `Employees`" UpdateCommand="UPDATE `Employees` SET `userType` = ?, `empName` = ?, `surname` = ?, `address` = ?, `phnumber` = ? WHERE `ID` = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="userType" Type="String" />
            <asp:Parameter Name="empName" Type="String" />
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phnumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
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
