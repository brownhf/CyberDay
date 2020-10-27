<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentContact.aspx.cs" Inherits="CyberDay.StudentContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:Table ID="contactTable" runat="server" CssClass="contact">
        <asp:TableRow >
            <asp:TableCell>
               <a>To:</a> 
            </asp:TableCell>
            <asp:TableCell> 
                <asp:TextBox ID="totxt" runat="server" Width="500px" Height="20px" CssClass="txt"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <a>From:</a>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="fromtxt" runat="server" Width="500px" Height="20px" CssClass="txt"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <a>Subject:</a>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="subjecttxt" runat="server" Width="500px" Height="20px" CssClass="txt"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               <a> Message: </a>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="mesgtxt" runat="server" Height="300px" Width="600px" TextMode="MultiLine"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="sendbttn" runat="server" Text="Send" Width="100px" CssClass="sendBttn" OnClick="sendbttn_Click"/>
            </asp:TableCell>
        </asp:TableRow>
       


    </asp:Table>


</asp:Content>
