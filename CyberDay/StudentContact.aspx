<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentContact.aspx.cs" Inherits="CyberDay.StudentContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        /*Added CssClass for alot of the elements below so we could style them and add padding to each*/
        body {
            background: #eee;
        }

        p{
            font-family:"Trebuchet MS", Helvetica, sans-serif;
            text-align: center;

        }

        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .wrapper {
           margin: 80px;
        }

        .contact{
            
            line-height: 65px;
           
        }

      

        .contactUs {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            
            padding: 40px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
            line-height: 40px;
           
        }

        .row{
            line-height:20px;
            padding:15px;
            margin:15px;
        }

        .txtFrom {
            margin-top: 20px;
        }

        .txtSubject {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .sendBttn {
            margin-top: 10px;
        }
    </style>

    <div class="wrapper">

        <section class="contactUs">

            <h1>CONTACT US</h1>
            <p>We are here to answer any questions you may have about CyberDay. Reach out to us and well respond as soon as we can.</p>
            <asp:Table ID="contactTable" runat="server" CssClass="contact">

          
               <asp:TableRow>
                    <asp:TableCell>
               <a>Name:</a> 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nametxt" runat="server" Width="500px" Height="35px" class="form-control input-lg"></asp:TextBox>
                    </asp:TableCell>
              </asp:TableRow>
              <asp:TableRow>
                    <asp:TableCell>
                <a>Your Email:</a>
                    </asp:TableCell>
                  <asp:TableCell>
                <asp:TextBox ID="fromtxt" runat="server" Width="500px" Height="35px" class=" form-control input-lg" TextMode="Email"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                <a>Subject:</a>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="subjecttxt" runat="server" Width="500px" Height="35px" class=" form-control input-lg" ></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
               
                <asp:TableRow>
                    <asp:TableCell>
               <a> Message: </a>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="mesgtxt" runat="server" Height="300px" Width="600px" TextMode="MultiLine" class=" form-control input-lg" ></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="sendBttn" runat="server" Text="Send" Width="100px" class="btn btn-primary" OnClick="sendbttn_Click" />
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>

        </section>

    </div>

</asp:Content>
