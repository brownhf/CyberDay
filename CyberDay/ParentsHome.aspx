<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentsHome.aspx.cs" Inherits="CyberDay.ParentsHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Welcome Parents" ForeColor="Purple" Font-Size="Large"></asp:Label>
    <br />
    <asp:Label ID="lblWelcomeText" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblChaperone" runat="server" 
        Text="Want to be a Chaperone?" ForeColor="Purple" Font-Size="Large"></asp:Label>
    <br />
    <asp:Label ID="lblChaperoneText" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:Image ID="imgQuad" runat="server" ImageUrl="/images/astheticQuad.jpg" />
</asp:Content>
