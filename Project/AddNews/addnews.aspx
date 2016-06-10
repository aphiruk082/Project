<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addnews.aspx.cs" Inherits="Project.AddNews.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <asp:SqlDataSource ID="sqlNews" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
        DeleteCommand="DELETE FROM &quot;T_NEWS&quot; WHERE &quot;NEWS_ID&quot; = :original_NEWS_ID AND ((&quot;NEWS_DATE&quot; = :original_NEWS_DATE) OR (&quot;NEWS_DATE&quot; IS NULL AND :original_NEWS_DATE IS NULL)) AND ((&quot;NEWS_TITLE&quot; = :original_NEWS_TITLE) OR (&quot;NEWS_TITLE&quot; IS NULL AND :original_NEWS_TITLE IS NULL)) AND ((&quot;NEWS_DETEIL&quot; = :original_NEWS_DETEIL) OR (&quot;NEWS_DETEIL&quot; IS NULL AND :original_NEWS_DETEIL IS NULL))" 
        InsertCommand="INSERT INTO &quot;T_NEWS&quot; (&quot;NEWS_ID&quot;, &quot;NEWS_DATE&quot;, &quot;NEWS_TITLE&quot;, &quot;NEWS_DETEIL&quot;) VALUES (:NEWS_ID, :NEWS_DATE, :NEWS_TITLE, :NEWS_DETEIL)" 
        OldValuesParameterFormatString="original_{0}" 
        ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;T_NEWS&quot;" 
        UpdateCommand="UPDATE &quot;T_NEWS&quot; SET &quot;NEWS_DATE&quot; = :NEWS_DATE, &quot;NEWS_TITLE&quot; = :NEWS_TITLE, &quot;NEWS_DETEIL&quot; = :NEWS_DETEIL WHERE &quot;NEWS_ID&quot; = :original_NEWS_ID AND ((&quot;NEWS_DATE&quot; = :original_NEWS_DATE) OR (&quot;NEWS_DATE&quot; IS NULL AND :original_NEWS_DATE IS NULL)) AND ((&quot;NEWS_TITLE&quot; = :original_NEWS_TITLE) OR (&quot;NEWS_TITLE&quot; IS NULL AND :original_NEWS_TITLE IS NULL)) AND ((&quot;NEWS_DETEIL&quot; = :original_NEWS_DETEIL) OR (&quot;NEWS_DETEIL&quot; IS NULL AND :original_NEWS_DETEIL IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_NEWS_ID" Type="Decimal" />
            <asp:Parameter Name="original_NEWS_DATE" Type="DateTime" />
            <asp:Parameter Name="original_NEWS_TITLE" Type="String" />
            <asp:Parameter Name="original_NEWS_DETEIL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NEWS_ID" Type="Decimal" />
            <asp:Parameter Name="NEWS_DATE" Type="DateTime" />
            <asp:Parameter Name="NEWS_TITLE" Type="String" />
            <asp:Parameter Name="NEWS_DETEIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NEWS_DATE" Type="DateTime" />
            <asp:Parameter Name="NEWS_TITLE" Type="String" />
            <asp:Parameter Name="NEWS_DETEIL" Type="String" />
            <asp:Parameter Name="original_NEWS_ID" Type="Decimal" />
            <asp:Parameter Name="original_NEWS_DATE" Type="DateTime" />
            <asp:Parameter Name="original_NEWS_TITLE" Type="String" />
            <asp:Parameter Name="original_NEWS_DETEIL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="NEWS_ID" 
        DataSourceID="sqlNews" DefaultMode="Insert">
        <EditItemTemplate>
            NEWS_ID:
            <asp:Label ID="NEWS_IDLabel1" runat="server" Text='<%# Eval("NEWS_ID") %>' />
            <br />
            NEWS_DATE:
            <asp:TextBox ID="NEWS_DATETextBox" runat="server" 
                Text='<%# Bind("NEWS_DATE") %>' />
            <br />
            NEWS_TITLE:
            <asp:TextBox ID="NEWS_TITLETextBox" runat="server" 
                Text='<%# Bind("NEWS_TITLE") %>' />
            <br />
            NEWS_DETEIL:
            <asp:TextBox ID="NEWS_DETEILTextBox" runat="server" 
                Text='<%# Bind("NEWS_DETEIL") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            NEWS_ID:
            <asp:TextBox ID="NEWS_IDTextBox" runat="server" Text='<%# Bind("NEWS_ID") %>' />
            <br />
            NEWS_DATE:
            <asp:Calendar ID="Calendar1" runat="server" 
                SelectedDate='<%# Bind("NEWS_DATE") %>'></asp:Calendar>
            <br />
            NEWS_TITLE:
            <asp:TextBox ID="NEWS_TITLETextBox" runat="server" Height="23px" 
                Text='<%# Bind("NEWS_TITLE") %>' Width="312px" />
            <br />
            NEWS_DETEIL:
            <asp:TextBox ID="NEWS_DETEILTextBox" runat="server" Height="101px" 
                Text='<%# Bind("NEWS_DETEIL") %>' TextMode="MultiLine" Width="331px" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            NEWS_ID:
            <asp:Label ID="NEWS_IDLabel" runat="server" Text='<%# Eval("NEWS_ID") %>' />
            <br />
            NEWS_DATE:
            <asp:Label ID="NEWS_DATELabel" runat="server" Text='<%# Bind("NEWS_DATE") %>' />
            <br />
            NEWS_TITLE:
            <asp:Label ID="NEWS_TITLELabel" runat="server" 
                Text='<%# Bind("NEWS_TITLE") %>' />
            <br />
            NEWS_DETEIL:
            <asp:Label ID="NEWS_DETEILLabel" runat="server" 
                Text='<%# Bind("NEWS_DETEIL") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </asp:Content>

