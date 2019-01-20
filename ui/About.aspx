<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ui.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>my name is todd and i am a dad that makes software</h3>
    <h4>i live in the middle of georgia</h4>
    <p>i have 2 dogs: a primary and secondary; the primary is named Roskolnikov von Busen; the secondary is a lesser dog name of Winifred</p>
    <img src="img/Roskolnikov-von-Busen.jpg" />
    <br />
    This is primary.
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:stack57uidbConnectionString %>' SelectCommand="SELECT [AppName], [AppDesc], [AppUrl] FROM [app]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="AppName" HeaderText="AppName" SortExpression="AppName"></asp:BoundField>
            <asp:BoundField DataField="AppDesc" HeaderText="AppDesc" SortExpression="AppDesc"></asp:BoundField>
            <asp:BoundField DataField="AppUrl" HeaderText="AppUrl" SortExpression="AppUrl"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>
