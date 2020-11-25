<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="TeacherRoster.aspx.cs" Inherits="CyberDay.TeacherRoster" %>
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
        .newCyber {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
    </style>    
    
    <div class="wrapper">
            <section class="newCyber">
                <fieldset>
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblTeacherRoster" runat="server" Text="View/Edit a Class Roster" Font-Bold="true" Font-Size="Larger"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblSelectTeacher" runat="server" Text="Select Teacher: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlSelectTeacher" runat="server" DataSourceID="sqlPopulateTeacher" DataTextField="TeacherDisplay" DataValueField="TeacherID" ></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnPrintRoster" runat="server" Text="Print Class Roster" OnClick="btnPrintRoster_Click" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </fieldset>
                
                <br />

                <fieldset>
                    <asp:GridView ID="grdvClassRoster" runat="server" EmptyDataText="No Students Associated to the Selected Teacher"></asp:GridView>
                </fieldset>
            </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[Teacher].[TeacherID], [dbo].[Teacher].[FirstName] + ' ' + [dbo].[Teacher].[LastName] AS TeacherDisplay FROM [dbo].[Teacher]"></asp:SqlDataSource>
</asp:Content>
