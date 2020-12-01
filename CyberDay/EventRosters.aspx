<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="EventRosters.aspx.cs" Inherits="CyberDay.EventRosters" %>
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
        /*.wrapper {
            margin: 80px;
        }*/
        .rosters{
            /*max-width: 1200px;*/
            /*margin: 0 auto;*/
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
    </style>
    
        <section class="rosters">
          
            <fieldset>
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCyberDayRoster" runat="server" Text="View a CyberDay Roster: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSelectRoster" runat="server" Text="Select Roster Type: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlRosterType" runat="server">
                                <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                                <asp:ListItem Text="Volunteer" Value="Volunteer"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSelectCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" ></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnSelectCyberDay" runat="server" Text="View CyberDay Roster" OnClick="btnSelectCyberDay_Click" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblIncorrectSelections" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>

            <br />
            <br />

            <fieldset>
                <asp:Label ID="lblStudentTitle" runat="server" Text="Student Roster: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                <asp:GridView ID="grdvStudentRoster" runat="server" EmptyDataText="No Students Associated" Caption="Student Roster:" AutoGenerateColumns="false" DataKeyNames="StudentID" OnRowCancelingEdit="grdvStudentRoster_RowCancelingEdit" OnRowEditing="grdvStudentRoster_RowEditing" OnRowDeleting="grdvStudentRoster_RowDeleting" OnRowUpdating="grdvStudentRoster_RowUpdating">
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
                        <asp:TemplateField HeaderText="Shirt">
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

            <br />
            <br />

            <fieldset>
                <asp:Label ID="lblVolunteerTitle" runat="server" Text="Volunteer Roster: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                <asp:GridView ID="grdvVolunteerRoster" runat="server" EmptyDataText="No Volunteers Associated" Caption="Volunteer Roster:" AutoGenerateColumns="false" DataKeyNames="VolunteerID" OnRowCancelingEdit="grdvVolunteerRoster_RowCancelingEdit" OnRowEditing="grdvVolunteerRoster_RowEditing" OnRowDeleting="grdvVolunteerRoster_RowDeleting" OnRowUpdating="grdvVolunteerRoster_RowUpdating" >
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblVolunteerID" runat="server" Width="25" Text='<%# Eval("VolunteerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerFirst" runat="server" Width="100" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerLast" runat="server" Width="100" Text='<%# Eval("LastName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerGender" runat="server" Width="75" Text='<%# Eval("Gender") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="JMU Affiliation">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerAffiliation" runat="server" Width="100" Text='<%# Eval("CISRelation") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Previous Participation">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerParticipation" runat="server" Width="50" Text='<%# Eval("PreviousParticipation") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerPhone" runat="server" Width="100" Text='<%# Eval("PhoneNumber") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lunch">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerLunch" runat="server" Width="50" Text='<%# Eval("LunchAttendance") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CyberDay ID">
                            <ItemTemplate>
                                <asp:TextBox ID="lblVolunteerCyberDay" runat="server" Width="75" Text='<%# Eval("CyberDayID") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" />
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>
            </fieldset>
        </section>

    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
</asp:Content>
