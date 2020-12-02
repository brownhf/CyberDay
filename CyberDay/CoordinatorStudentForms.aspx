<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="CoordinatorStudentForms.aspx.cs" Inherits="CyberDay.WebForm4" %>

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
            max-width: 1000px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
        h1{
            text-align:center;
            margin-bottom:20px;
        }
    </style>
    <div class="wrapper">
        <section class="newCyber">
            <fieldset>
                <h1>View Student Forms</h1>
                <br />
                <asp:Label ID="lblSelectCyberDay" runat="server" Text="Select CyberDay:"></asp:Label>
                <asp:DropDownList
                    ID="ddlCyberDayDate"
                    runat="server"
                    DataSourceID="sqlPopulateCyberDay"
                    DataValueField="CyberDayID"
                    DataTextField="CyberDayDisplay">
                </asp:DropDownList>
                <asp:Label ID="lblSelectForm" runat="server" Text="Select Form:"></asp:Label>
                <asp:DropDownList ID="ddlForm" runat="server">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Permission Form" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Photo Release Form" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Both" Value="3"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Print Roster" OnClick="btnSubmit_Click" />
                <asp:Label ID="lblPrintError" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="gvFormsRoster" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
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
                <asp:Button ID="btnExportExcel" runat="server" Text="Export to Excel" OnClick="btnExportExcel_Click" />
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
</asp:Content>
