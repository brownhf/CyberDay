<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentActivity.aspx.cs" Inherits="CyberDay.StudentActivity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <fieldset class="info">
        <legend>View Activity Information</legend>
        <%--<asp:TextBox ID="searchtxt" runat="server" Width ="150px"></asp:TextBox>--%>
          
        <asp:DropDownList ID="cyberDayDDL" runat="server">
            <asp:ListItem Text="Cyber1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Cyber2" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="eventDDL" runat="server">
            <asp:ListItem Text="Event1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Event2" Value="2"></asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="searchbttn" runat="server" Text="Search" OnClick="searchbttn_Click" />

        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="250px"></asp:DetailsView>
        <br />
        <asp:Button ID="dwnldBttn" runat="server" Text="Download" OnClick="dwnldBttn_Click" />
    </fieldset>

</asp:Content>

