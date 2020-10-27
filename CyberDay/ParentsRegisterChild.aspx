<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentsRegisterChild.aspx.cs" Inherits="CyberDay.ParentsRegisterChild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <fieldset>
        <table>
            <tr>
                <td colspan="2">
                    <h3>Register My Child</h3>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <h4>Student Basic Info:</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStudentEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNotes" runat="server" Text="Notes:"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtNotes" runat="server" Height="100"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <h4>Student School Info:</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStudentSchool" runat="server" Text="School Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSchool" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSelectTeacher" runat="server" Text="Select Teacher:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeacher" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <h4>Student Meal Info:</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSelectMeal" runat="server" Text="Select Meal:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMeal" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAllergies" runat="server" Text="Allergies:"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Text="Peanut"></asp:ListItem>
                        <asp:ListItem Text="Dairy"></asp:ListItem>
                        <asp:ListItem Text="Other"></asp:ListItem>
                        <asp:ListItem Text="None"></asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

