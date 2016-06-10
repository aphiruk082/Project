<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Project._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 595px;
    }
</style>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="NEWS_ID" DataSourceID="SqlviewNews" Width="758px">
        <Columns>
            <asp:BoundField DataField="NEWS_ID" HeaderText="NEWS_ID" ReadOnly="True" 
                SortExpression="NEWS_ID" />
            <asp:BoundField DataField="NEWS_DATE" HeaderText="NEWS_DATE" 
                SortExpression="NEWS_DATE" />
            <asp:BoundField DataField="NEWS_TITLE" HeaderText="NEWS_TITLE" 
                SortExpression="NEWS_TITLE" />
            <asp:BoundField DataField="NEWS_DETEIL" HeaderText="NEWS_DETEIL" 
                SortExpression="NEWS_DETEIL" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlviewNews" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;T_NEWS&quot;"></asp:SqlDataSource>
</asp:Content>

