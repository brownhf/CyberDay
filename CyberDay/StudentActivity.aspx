<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentActivity.aspx.cs" Inherits="CyberDay.StudentActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        body {
            background: #eee;
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
        p{
            margin-bottom: 20px;
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
        .cyberDayDDL{
            margin-right: 10px;
        }
        .eventDDL{
            margin-right: 10px;
        }
        .dwnldBttn{
            margin-top: 10px;
        }
    </style>

    <div class="wrapper">

        <section class="activityInfo">

            <fieldset class="info">

                <%--<legend>View Activity Information</legend>--%>
                <%--<asp:TextBox ID="searchtxt" runat="server" Width ="150px"></asp:TextBox>--%>
                <h1>VIEW ACTIVITY INFORMATION</h1>
                <p>Here you will be able to see information regarding CyberDay. You will be ablt to find out more about various tasks and their related instructions.</p>
                

                <asp:DropDownList ID="cyberDayDDL" runat="server" CssClass="cyberDayDDL">
                    <asp:ListItem Text="Cyber1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Cyber2" Value="2"></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="eventDDL" runat="server" CssClass="eventDDL">
                    <asp:ListItem Text="Event1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Event2" Value="2"></asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="searchbttn" runat="server" Text="Search" OnClick="searchbttn_Click" />

                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" Height="250px" Width="250px"></asp:DetailsView>
                <br />
                <asp:Button ID="dwnldBttn" runat="server" Text="Download" OnClick="dwnldBttn_Click" CssClass="dwnldBttn" />
            </fieldset>
        </section>
        
    </div>
</asp:Content>

