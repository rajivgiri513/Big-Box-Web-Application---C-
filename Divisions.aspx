﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Divisions.aspx.cs" Inherits="Divisions" MasterPageFile="~/MasterPage.master"  %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        
        .aspNetHidden
        {
      display:none;

        }
        
div {
    width: 340px;
    padding: 25px;
    border: 18px solid #151414;
    margin: 15px;
    float: left;
    border-color:lightgreen;
}
body{
    background-color:lightgreen;
}

user agent stylesheet
div {
    display: block;
}
          </style>
    <center>
    <h1>Divisions Page</h1>
         <input action="action" onclick="history.go(-1);" type="button" value="Back"/>
    </center>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [divisions]"></asp:SqlDataSource>
            
            
            
            >



        </asp:SqlDataSource>
        <asp:GridView ID="GridView1"  Align="Center" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="1250px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="DivisionNumber" HeaderText="DivisionNumber" SortExpression="DivisionNumber" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
 </asp:Content>
