﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="MealTicket.aspx.cs" Inherits="CyberDay.MealTicket" %>
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
        .dv{
            text-align: center;
            padding: 50px;
            margin-left: 150px;
            
        }
    </style>
    <div class="wrapper">
        <section class="newCyber">
            <fieldset>
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMealTicketInfo" runat="server" Text="View Total Quantity and Price of Tickets for a CyberDay: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSelectCyberDay" runat="server" Text="Select CyberDay: "></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlSelectCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" OnSelectedIndexChanged="ddlSelectCyberDay_SelectedIndexChanged"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnTicketQuantity" runat="server" Text="Print the Total Tickets for the Given CyberDay" OnClick="btnTicketQuantity_Click"/>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnTicketPrice" runat="server" Text="Print the Total Price of Tickets for the Given CyberDay" OnClick="btnTicketPrice_Click"/>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblTicketQuantity" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="lblTicketPrice" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <div>
                    <asp:GridView
                        ID="grdLunchAttendance"
                        DataSourceID="srcLunchAttendance"
                        runat="server"
                        CellPadding="3"
                        CellSpacing="2"
                        CssClass="dv"
                        BorderColor="Purple"
                        AlternatingRowStyle-BackColor="PaleGoldenrod">
                    </asp:GridView>
                    <br />
                    <asp:Button ID="btnPdf" runat="server" Text="Download" OnClick="btnPdf_Click" />
                </div>
            </fieldset>
        </section>
    </div>
    <asp:SqlDataSource ID="srcLunchAttendance" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[Lunch].[FirstName], [dbo].[Lunch].[LastName] FROM [dbo].[Lunch] WHERE [dbo].[Lunch].[Attendance] = 'yes' AND [dbo].[Lunch].[CyberDayID] = @CyberDay">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSelectCyberDay" PropertyName="SelectedValue" Name="CyberDay" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
</asp:Content>
