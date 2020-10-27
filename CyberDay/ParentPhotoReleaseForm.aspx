<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentPhotoReleaseForm.aspx.cs" Inherits="CyberDay.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <fieldset>
        <h3>Upload Student Release Form</h3>
        <br />
        <br />
        <asp:Label ID="lblRelease" runat="server" Text="Upload Release Form: " ForeColor="Purple"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </fieldset>
</asp:Content>
