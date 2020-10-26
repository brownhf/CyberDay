<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="NewVolunteer.aspx.cs" Inherits="CyberDay.NewVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblNewVolunteer" runat="server" Text="Add New Volunteer: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFirst" runat="server" Text="First Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirst" runat="server" ControlToValidate="txtFirst" Text="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpFirstString" runat="server" ControlToValidate="txtFirst" Operator="DataTypeCheck" Type="String" Text="Text Box is for First Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLast" runat="server" Text="Last Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqLast" runat="server" Text="Last Name is required" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpLastString" runat="server" ControlToValidate="txtLast" Operator="DataTypeCheck" Type="String" Text="Text Box is for Last Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblGender" runat="server" Text="Select a Preferred Gender Identity: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                        <asp:ListItem Text="Gender Neutral" Value="Gender Neutral"></asp:ListItem>
                        <asp:ListItem Text="Non Binary" Value="Non Binary"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmail" runat="server" Text="JMU Email Address: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" Text="Last Name is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpEmail" runat="server" Text="Text Box is for Email Address" ControlToValidate="txtEmail" Operator="DataTypeCheck" Type="String" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblVolunteerType" runat="server" Text="Select Type of Volunteer (in relation to position at JMU): "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rdoVolunteerType" runat="server">
                        <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                        <asp:ListItem Text="Staff" Value="Staff"></asp:ListItem>
                        <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDegreeType" runat="server" Text="Select Your Relation to the CIS Department: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rdoDegreeType" runat="server">
                        <asp:ListItem Text="Major" Value="Major"></asp:ListItem>
                        <asp:ListItem Text="Minor" Value="Minor"></asp:ListItem>
                        <asp:ListItem Text="Faculty/Staff" Value="Faculty/Staff"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblShirtSize" runat="server" Text="Shirt Size: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlShirtSize" runat="server" >
                        <asp:ListItem Selected="True" Text="S" Value="S"></asp:ListItem>
                        <asp:ListItem Text="M" Value="M"></asp:ListItem>
                        <asp:ListItem Text="L" Value="L"></asp:ListItem>
                        <asp:ListItem Text="XL" Value="XL"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPreviousParticipation" runat="server" Text="Has this volunteer previously attended/worked any CyberDay events?"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rdoPreviousParticipation" runat="server">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnSaveVolunteer" runat="server" Text="Save New Volunteer" OnClick="btnSaveVolunteer_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>
</asp:Content>
