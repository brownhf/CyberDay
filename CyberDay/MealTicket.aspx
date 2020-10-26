<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="MealTicket.aspx.cs" Inherits="CyberDay.MealTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <asp:DropDownList ID="ddlSelectCyberDay" runat="server" AutoPostBack="true" ></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnTicketQuantity" runat="server" Text="Print the Total Amount of Tickets for the Given CyberDay" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnTicketPrice" runat="server" Text="Print the Total Price of Tickets for the Given CyberDay" />
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
    </fieldset>
</asp:Content>
