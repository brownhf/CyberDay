<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentsRegisterChild.aspx.cs" Inherits="CyberDay.ParentsRegisterChild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
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
    </style>
    <div class="wrapper">
        <section class="activityInfo">
            <fieldset class="info">
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
                        <td>
                            <asp:Label ID="lblFirstNameError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
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
                            <asp:Label ID="lblLastNameError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlGenders" runat="server">
                                <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                <asp:ListItem Text="Transgender" Value="Transgender"></asp:ListItem>
                                <asp:ListItem Text="Gender Neutral" Value="Gender Neutral"></asp:ListItem>
                                <asp:ListItem Text="Non Binary" Value="Non Binary"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblGenderError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblAgeError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentEmail" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentEmail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblEmailError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblShirtSize" runat="server" Text="Shirt Size:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlShirtSize" runat="server">
                                <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                                <asp:ListItem Text="Small" Value="Small"></asp:ListItem>
                                <asp:ListItem Text="Medium" Value="Medium"></asp:ListItem>
                                <asp:ListItem Text="Large" Value="Large"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblShirtSizeError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
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
                        <td>
                            <asp:Label ID="lblNotesError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h4>Student Teacher Info:</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSelectTeacher" runat="server" Text="Select Teacher:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTeacher" runat="server" DataSourceID="srcTeachers" DataTextField="Name" DataValueField="TeacherID"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Student Meal Info:</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSelectMeal" runat="server" Text="Dietary Needs:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDietaryNeeds" runat="server">
                                <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                                <asp:ListItem Text="Vegetarian" Value="Vegetarian"></asp:ListItem>
                                <asp:ListItem Text="Vegan" Value="Vegan"></asp:ListItem>
                                <asp:ListItem Text="None" Value="None"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblSelectMealError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAllergies" runat="server" Text="Allergies:"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBoxList ID="cbAllergies" runat="server">
                                <asp:ListItem Text="Peanut"></asp:ListItem>
                                <asp:ListItem Text="Dairy"></asp:ListItem>
                                <asp:ListItem Text="Other"></asp:ListItem>
                                <asp:ListItem Text="None"></asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                        <td>
                            <asp:Label ID="lblAllergiesError" runat="server" Text="" ForeColor="Red" Font-Italic="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <asp:Label ID="lblStudentSubmitError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource
        ID="srcTeachers"
        ConnectionString="<%$ ConnectionStrings:CyberDayDB %>"
        SelectCommand="Select TeacherID, FirstName + ' ' + LastName as [Name] From Teacher"
        runat="server"></asp:SqlDataSource>
</asp:Content>

