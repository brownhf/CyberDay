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
                    <asp:DropDownList ID="ddlSelectStudentVolunteer" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectStudentCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectStudentCyberDay" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectStudentEvent" runat="server" Text="Select Event from Chosen CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectStudentEvent" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnStudentVolunteerAssign" runat="server" Text="Assign Student to Selected CyberDay Events" OnClick="btnStudentVolunteerAssign_Click" />
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
                    <asp:DropDownList ID="ddlSelectFacultyVolunteer" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectFacultyCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectFacultyCyberDay" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectFacultyEvent" runat="server" Text="Select Event from Chosen CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectFacultyEvent" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnFacultyVolunteerAssign" runat="server" Text="Assign Student to Selected CyberDay Events" OnClick="btnFacultyVolunteerAssign_Click" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lblAddStatusSuccess2" runat="server" Text="" ForeColor="Green"></asp:Label>
                    <asp:Label ID="lblAddStatusFail2" runat="server" Text="" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

    <%--<asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />

    <asp:SqlDataSource ID="sqlPopulateEvent" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />

    <asp:SqlDataSource ID="sqlPopulateStudentVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />
    
    <asp:SqlDataSource ID="sqlPopulateFacultyVolunteer" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />--%>

</asp:Content>
