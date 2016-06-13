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
        width: 96px;
    }
    .style3
    {
        width: 665px;
    }
</style>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:SqlDataSource ID="SqlviewNews" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
        
    SelectCommand="SELECT * FROM &quot;T_NEWS&quot; ORDER BY &quot;NEWS_ID&quot; DESC"></asp:SqlDataSource>
<table class="style1">
    <tr>
        <td align="center" class="style2">
            &nbsp;</td>
        <td align="left" class="style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="NEWS_ID" DataSourceID="SqlviewNews" Width="655px" CellPadding="4" 
                ForeColor="#333333" GridLines="None" Height="106px" 
                style="margin-left: 0px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NEWS_DATE" HeaderText="วันที่ข่าวสาร" 
                SortExpression="NEWS_DATE" />
            <asp:BoundField DataField="NEWS_TITLE" HeaderText="หัวข้อ" 
                SortExpression="NEWS_TITLE" />
            <asp:BoundField DataField="NEWS_DETEIL" HeaderText="รายละเอียด" 
                SortExpression="NEWS_DETEIL" />
        </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </td>
        <td align="left">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

