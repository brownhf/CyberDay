<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="CyberDay.StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:Image ID="headImg" runat="server" CssClass="headImg" ImageUrl="Images/studentsOnQuad.jpg" />--%>
    <%--<asp:Image ID="aerialQuad" runat="server" CssClass="aerialQuad" ImageUrl="Images/aerial-quad.jpg" Height="417px" Width="1249px" />--%>
    <asp:Image ID="dukeDogs" runat="server" CssClass="dukeDogs" ImageUrl="Images/dukeDogs.png"/>
    <style>
        .dukeDogs {
            max-width: 100%;
            }

        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }
    </style>
    <section class="info">

        <h1>Welcome to the Student Page</h1>
        <hr />

        <h3><a href="StudentActivity.aspx">View Activity Information</a></h3>
        <br />
        <p>Access information regarding Cyber Day tasks and instructions</p>
        <hr />

        <h3><a href="StudentUpdate.aspx">Finished a Project? </a></h3>
        <br />
        <p>If you have finished a project, visit this section to upload your finished work for judging</p>
        <hr />

        <h3><a href="StudentContact.aspx">Need to Chat? </a></h3>
        <br />
        <p>Visit this section to email a volunteer/coordinator about any questions regarding the event</p>

    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
