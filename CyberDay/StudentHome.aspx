<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="CyberDay.StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:Image ID="headImg" runat="server" CssClass="headImg" ImageUrl="Images/studentsOnQuad.jpg" />--%>
    <%--<asp:Image ID="aerialQuad" runat="server" CssClass="aerialQuad" ImageUrl="Images/aerial-quad.jpg" Height="417px" Width="1249px" />--%>
    <asp:Image ID="dukeDogs" runat="server" CssClass="dukeDogs" ImageUrl="Images/dukeDogs.png" />
    <style>
        /*WAS HAVING ISSUE WITH CURRENT PICTURE FITTING WHOLE SCREEN SO I HAD TO FIND A NEW ONE*/
        .dukeDogs {
            max-width: 100%;
        }
        /*SECTION IS THE BODY OF THE SUB PAGES/THE CONTENT PLACE HOLDERS BODY, SO THE 75% ONLY APPLIES TO THAT PORTION OF THE PAGE*/
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
        }
    </style>
    <section class="info">

        <h1>STUDENT HOME</h1>
        <hr />

        <h3><a href="StudentActivity.aspx">View Activity Information</a></h3>
        <br />
        <p>Here is where you will access all information regarding CyberDay activities. You can find out more about various tasks and related instructions.</p>
        <hr />

        <h3><a href="StudentUpdate.aspx">Finished a Project?</a></h3>
        <br />
        <p>Done with a project? If you have completed a project, visit this section to upload your finished work. </p>
        <hr />

        <h3><a href="StudentContact.aspx">Need to Chat?</a></h3>
        <br />
        <p>If you need to get in touch with any staff of CyberDay, visit this section to get in contact with coordinators about any questions you may have.</p>

    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
