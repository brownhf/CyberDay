<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="EventRosters.aspx.cs" Inherits="CyberDay.EventRosters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCyberDayRoster" runat="server" Text="View a CyberDay Roster: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectCyberDay" runat="server" ></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnSelectCyberDay" runat="server" Text="Print CyberDay Roster" OnClick="btnSelectCyberDay_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:GridView ID="grdvCyberDayRoster" runat="server" EmptyDataText="No Students Associated" />
    </fieldset>
    <%--<asp:SqlDataSource ID="sqlPopulateDdl" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />--%>
</asp:Content>
