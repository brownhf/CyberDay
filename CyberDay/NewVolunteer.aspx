<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="NewVolunteer.aspx.cs" Inherits="CyberDay.NewVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background: #eee;
        }
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }
        .wrapper {
            margin: 80px;
        }
        .volunteer {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
    </style>

    <div class="wrapper">
        <section class="volunteer">
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
                            <asp:TextBox ID="txtFirst" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqFirst" runat="server" ControlToValidate="txtFirst" Text="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpFirstString" runat="server" ControlToValidate="txtFirst" Operator="DataTypeCheck" Type="String" Text="Text Box is for First Name" ForeColor="Red"></asp:CompareValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblLast" runat="server" Text="Last Name: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtLast" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqLast" runat="server" Text="Last Name is required" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpLastString" runat="server" ControlToValidate="txtLast" Operator="DataTypeCheck" Type="String" Text="Text Box is for Last Name" ForeColor="Red"></asp:CompareValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblGender" runat="server" Text="Gender Identity: "></asp:Label>
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
                            <asp:Label ID="lblVolunteerType" runat="server" Text="Volunteer Type: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlVolunteerType" runat="server">
                                <asp:ListItem Text="CIS Major" Value="CIS Major"></asp:ListItem>
                                <asp:ListItem Text="CIS Minor" Value=" CIS Minor"></asp:ListItem>
                                <asp:ListItem Text="CIS Faculty/Teacher" Value=" CIS Faculty/Teacher"></asp:ListItem>
                                <asp:ListItem Text="CS Major" Value=" CS Major"></asp:ListItem>
                                <asp:ListItem Text="CS Minor" Value=" CS Minor"></asp:ListItem>
                                <asp:ListItem Text="CS Faculty/Teacher" Value="CS Faculty/Teacher"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblPreviousParticipation" runat="server" Text="Any Previous CyberDay Participation? "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlPreviousParticipation" runat="server">
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblEmail" runat="server" Text="Email Address: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" Text="Last Name is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpEmail" runat="server" Text="Text Box is for Email Address" ControlToValidate="txtEmail" Operator="DataTypeCheck" Type="String" ForeColor="Red"></asp:CompareValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblPhone" runat="server" Text="Phone Number: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtPhone" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqPhone" runat="server" Text="Phone Number is Required" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnSaveVolunteer" runat="server" Text="Save New Volunteer" OnClick="btnSaveVolunteer_Click" />
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



</asp:Content>
