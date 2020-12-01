<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentUploadPermission.aspx.cs" Inherits="CyberDay.WebForm1" %>

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
        td{
            padding-top: 15px;
        }
    </style>
    <div class="wrapper">
        <section class="activityInfo">
            <fieldset class="info">
                <h2>Upload Permission Form</h2>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Enter Your Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Your Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudent" runat="server" Text="Student Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlStudents"
                                runat="server" DataSourceID="srcStudent"
                                DataTextField="Name" DataValueField="StudentID">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="fileUploadPermission" runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" Height="38px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                        </td>
                    </tr>

                </table>
                <asp:SqlDataSource
                    ID="srcStudent"
                    ConnectionString="<%$ ConnectionStrings:CyberDayDB %>"
                    SelectCommand="Select StudentID, FirstName + ' ' + LastName as [Name] From Student"
                    runat="server"></asp:SqlDataSource>
            </fieldset>
        </section>
    </div>
</asp:Content>
