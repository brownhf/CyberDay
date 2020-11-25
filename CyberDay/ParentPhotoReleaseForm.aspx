<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentPhotoReleaseForm.aspx.cs" Inherits="CyberDay.ParentPhotoReleaseForm" %>

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
                <h3>Download Form</h3>
                <asp:GridView ID="gvFormsDownload" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvFormsDownload_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="File">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                        <asp:BoundField DataField="Type" HeaderText="File Type" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <br />
                <h3>Submit Permission Forms:</h3>
                <p><a href="ParentUploadPhoto.aspx">Upload Photo Release Form</a></p>
                <table>
                    <tr>
                        <td>
                            <p><a href="ParentUploadPermission.aspx">Upload Permission Form</a></p>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </section>
    </div>
</asp:Content>

