<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentChaperone.aspx.cs" Inherits="CyberDay.ParentChaperone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <fieldset>
        <table>
            <tr>
                <td>
                    <h3>Chaperone Sign Up!</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblWelcomeMessage" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblWelcomeMsg2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </fieldset>
    <br />
    <br />
    <fieldset>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblForm" runat="server" Text="Contact Info:" Font-Bold="true"></asp:Label>
                    <br />
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
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone #:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFood" runat="server" Text="Meal Info:" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMealSelection" runat="server" Text="Select Meal:"></asp:Label>
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
                    <asp:Label ID="lblShirtSize" runat="server" Text="Shirt Size:" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblShirtSizeSelection" runat="server" Text="T-Shirt Size:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlShirtSize" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

