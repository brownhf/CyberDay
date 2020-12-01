<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="AssignVolunteer.aspx.cs" Inherits="CyberDay.AssignVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <section>
            <fieldset>
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblVolunteer" runat="server" Text="Select a Volunteer: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlVolunteer" runat="server" DataSourceID="sqlPopulateVolunteer" DataTextField="VolunteerDisplay" DataValueField="VolunteerID" ></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server" Text="Assign to CyberDay: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlCyberday" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" ></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblLunchAttendance" runat="server" Text="Attending Lunch:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlLunchAttendance" runat="server">
                                <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnAssignVolunteer" runat="server" Text="Assign Selected Volunteer to Selected CyberDay" OnClick="btnAssignVolunteer_Click" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblAddStatusSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                            <asp:Label ID="lblAddStatusFail" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
    <asp:SqlDataSource ID="sqlPopulateVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[Volunteer].[VolunteerID], [dbo].[Volunteer].[FirstName] + ' ' + [dbo].[Volunteer].[LastName] AS VolunteerDisplay FROM [dbo].[Volunteer] ORDER BY [dbo].[Volunteer].[VolunteerID] DESC" ></asp:SqlDataSource>
</asp:Content>
