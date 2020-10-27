<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="TeacherHomePage.aspx.cs" Inherits="CyberDay.TeacherHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCreateContact" runat="server" Text="Create a Teacher Contact: " Font-Bold="true" Font-Size="Large"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnAddContact" runat="server" Text="Create Contact" OnClick="btnCreateContact_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>
    <br />
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddFaculty" runat="server" Text="Add Faculty Members Attending with a Contact: " Font-Bold="true" Font-Size="Large"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnAddFaculty" runat="server" Text="Add Faculty/Other Teachers" OnClick="btnAddFaculty_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>
</asp:Content>
