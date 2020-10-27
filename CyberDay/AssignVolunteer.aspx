<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="AssignVolunteer.aspx.cs" Inherits="CyberDay.AssignVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEventStudentAssign" runat="server" Text="Assign a Student Volunteer to Events at a Given CyberDay: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectStudentVolunteer" runat="server" Text="Select Student Volunteer: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectStudentVolunteer" runat="server" DataSourceID="sqlPopulateStudentVolunteer" DataTextField="FullName" DataValueField="StudentVolunteerID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectStudentCyberDay" runat="server" Text="Select CyberDay Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectStudentCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="Date" DataValueField="CyberDayID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectStudentEvent" runat="server" Text="Select Event from Chosen CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectStudentEvent" runat="server" DataSourceID="sqlPopulateEvent" DataTextField="EventName" DataValueField="EventID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnStudentVolunteerAssign" runat="server" Text="Assign Student Volunteer to Selected CyberDay Events" OnClick="btnStudentVolunteerAssign_Click" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblAddStatusSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                    <asp:Label ID="lblAddStatusFail" runat="server" Text="" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <br />

    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFacultyAssign" runat="server" Text="Assign a Faculty Volunteer to Events at a Given CyberDay: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectFacultyVolunteer" runat="server" Text="Select Faculty Volunteer: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectFacultyVolunteer" runat="server" DataSourceID="sqlPopulateFacultyVolunteer" DataTextField="FullName" DataValueField="FacultyVolunteerID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectFacultyCyberDay" runat="server" Text="Select CyberDay Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectFacultyCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="Date" DataValueField="CyberDayID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectFacultyEvent" runat="server" Text="Select Event from Chosen CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectFacultyEvent" runat="server" DataSourceID="sqlPopulateEvent" DataTextField="EventName" DataValueField="EventID" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnFacultyVolunteerAssign" runat="server" Text="Assign Faculty Volunteer to Selected CyberDay Events" OnClick="btnFacultyVolunteerAssign_Click" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblAddStatusSuccess2" runat="server" Text="" ForeColor="Green"></asp:Label>
                    <asp:Label ID="lblAddStatusFail2" runat="server" Text="" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select CyberDayID, Date From CyberDay" />

    <asp:SqlDataSource ID="sqlPopulateEvent" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select EventID, EventName From Event" />

    <asp:SqlDataSource ID="sqlPopulateStudentVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select StudentVolunteerID, FirstName + ' ' + LastName As FullName From StudentVolunteer" />
    
    <asp:SqlDataSource ID="sqlPopulateFacultyVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select FacultyVolunteerID, FirstName + ' ' + LastName As FullName From FacultyVolunteer" />

</asp:Content>
