<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="AssignVolunteer.aspx.cs" Inherits="CyberDay.AssignVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEventAssign" runat="server" Text="Assign a Volunteer to Events at a Given CyberDay: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectVolunteer" runat="server" Text="Select Volunteer: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectVolunteer" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectCyberDay" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectEvent" runat="server" Text="Select Event from Chosen CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectEvent" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Assign Student to Selected CyberDay Events" OnClick="btnVolunteerAssign_Click" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="" ForeColor="Green"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <%--<asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />

    <asp:SqlDataSource ID="sqlPopulateEvent" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />

    <asp:SqlDataSource ID="sqlPopulateVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />--%>

</asp:Content>
