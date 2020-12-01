<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="TeacherRosters.aspx.cs" Inherits="CyberDay.TeacherRosters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background: #eee;
        }
        section {
            width: 100%;
            margin-right: auto;
            margin-left: auto;
        }
        .wrapper {
            margin: 80px;
        }
        .roster {
            max-width: 1600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
    </style>

    <div class="wrapper">
        <section class="roster">
            <fieldset>
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="lblTeacherRoster" runat="server" Text="Select a Class Roster: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlTeacher" runat="server" DataSourceID="sqlPopulateTeacher" DataTextField="TeacherName" DataValueField="TeacherID" ></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID ="btnViewRoster" runat="server" Text="View Roster" OnClick="btnViewRoster_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
            <fieldset>
                <asp:GridView ID="grdvStudentRoster" runat="server" EmptyDataText="No Students Associated" AutoGenerateColumns="false" DataKeyNames="StudentID" OnRowCancelingEdit="grdvStudentRoster_RowCancelingEdit" OnRowEditing="grdvStudentRoster_RowEditing" OnRowDeleting="grdvStudentRoster_RowDeleting" OnRowUpdating="grdvStudentRoster_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblStudentID" runat="server" Width="25" Text='<%# Eval("StudentID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentFirst" runat="server" Width="100" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentLast" runat="server" Width="100" Text='<%# Eval("LastName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Age">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentAge" runat="server" Width="50" Text='<%# Eval("Age") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentGender" runat="server" Width="75" Text='<%# Eval("Gender") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Shirt Size">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentShirt" runat="server" Width="100" Text='<%# Eval("ShirtSize") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Notes">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentNotes" runat="server" Text='<%# Eval("Notes") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dietary">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentDietary" runat="server" Width="100" Text='<%# Eval("Dietary") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Allergies">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentAllergies" runat="server" Text='<%# Eval("Allergies") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Teacher ID">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentTeacher" runat="server" Width="75" Text='<%# Eval("TeacherID") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lunch">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentLunch" runat="server" Width="50" Text='<%# Eval("LunchAttendance") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CyberDay ID">
                            <ItemTemplate>
                                <asp:TextBox ID="lblStudentCyberDay" runat="server" Width="75" Text='<%# Eval("CyberDayID") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" />
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[Teacher].[TeacherID], [dbo].[Teacher].[FirstName] + ' ' + [dbo].[Teacher].[LastName] AS TeacherName FROM [dbo].[Teacher]"></asp:SqlDataSource>
</asp:Content>
