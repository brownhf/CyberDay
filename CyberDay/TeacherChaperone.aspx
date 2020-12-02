<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="TeacherChaperone.aspx.cs" Inherits="CyberDay.TeacherChaperone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 20px;
        }

        body {
            background: #eee;
        }

        .wrapper {
            margin: 80px;
        }

        .activityInfo {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
        td{
            padding-top: 15px;
        }
    </style>
    <div class="wrapper">
        <section class="activityInfo">
            <fieldset class="info">
                <table>
                    <tr>
                        <td>
                            <h3>Chaperone Sign Up!</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
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
                        <td>
                            <asp:Label ID="lblFirstNameError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblLastNameError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone #:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblPhoneError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblEmailError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCyberDay" runat="server" Text="Assign to CyberDay: "></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" ></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFood" runat="server" Text="Meal Info:" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLunchAttendance" runat="server" Text="Attending Lunch:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlLunchAttendance" runat="server">
                                <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="no"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblLunchAttendanceError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAllergies" runat="server" Text="Allergies:"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:TextBox ID="txtAllergies" runat="server"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:Label ID="lblAllergiesError" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" OnClick="btnSubmit_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblDuplicateError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
</asp:Content>