<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="CoordinatorHomePage.aspx.cs" Inherits="CyberDay.CoordinatorHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblNewCyberDay" runat="server" Text="Add a New CyberDay: " Font-Bold="true" Font-Size="Large"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnNewCyberDay" runat="server" Text="Set Date" OnClick="btnNewCyberDay_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

   <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSchedule" runat="server" Text="Build a CyberDay Schedule/Event List: " Font-Bold="true" Font-Size="Large" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnSchedule" runat="server" Text="Proceed To Event Entry Page" OnClick="btnSchedule_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblRoster" runat="server" Text="View/Update CyberDay Roster: " Font-Bold="true" Font-Size="Large" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnRoster" runat="server" Text="Proceed to Roster Information" OnClick="btnRoster_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCreateVolunteer" runat="server" Text="Add a New Volunteer to the CyberDay Management System: " Font-Bold="true" Font-Size="Large" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCreateVolunteer" runat="server" Text="Proceed to Volunteer Entry Page" OnClick="btnCreateVolunteer_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAssignVolunteer" runat="server" Text="Assign a Volunteer to a CyberDay: " Font-Bold="true" Font-Size="Large" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnAssignVolunteer" runat="server" Text="Proceed to Volunteer Assignment Page" OnClick="btnAssignVolunteer_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblMealTicket" runat="server" Text="View Meal Ticket Information by CyberDay Date: " Font-Bold="true" Font-Size="Large" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnMealTicket" runat="server" Text="Proceed to Meal Ticket Page" OnClick="btnMealTicket_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>
</asp:Content>
