<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentContact.aspx.cs" Inherits="CyberDay.StudentContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" >
    <style>
        body{
            background: #eee;
        }
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }
        
        h1{
            text-align: center;
            margin-bottom: 20px;
        }

        .wrapper {
            margin: 80px;
        }

        .contactUs {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
        .txtFrom{
            margin-top: 20px;
            
        }
        .txtSubject{
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .sendBttn{
            margin-top: 10px;
        }
    </style>

    <div class="wrapper">

        <section class="contactUs">

            <h1>CONTACT US</h1>
            <p>We are here to answer any questions you may have about CyberDay. Reach out to us and well respond as soon as we can.</p>
            <asp:Table ID="contactTable" runat="server" CssClass="contact">
             <%--   <asp:TableRow>
                    <asp:TableCell>
               <a>To:</a> 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="totxt" runat="server" Width="500px" Height="20px" CssClass="txt"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>--%>
                <asp:TableRow>
                    <asp:TableCell>
                <a>From:</a>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="fromtxt" runat="server" Width="500px" Height="20px" CssClass="txtFrom"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                <a>Subject:</a>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="subjecttxt" runat="server" Width="500px" Height="20px" CssClass="txtSubject"></asp:TextBox>
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
                        <asp:Button ID="sendBttn" runat="server" Text="Send" Width="100px" CssClass="sendBttn" OnClick="sendbttn_Click" />
                    </asp:TableCell>
                </asp:TableRow>



            </asp:Table>

        </section>

    </div>
</asp:Content>
