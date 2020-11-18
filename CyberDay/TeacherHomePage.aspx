﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="TeacherHomePage.aspx.cs" Inherits="CyberDay.TeacherHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="ExploreJMU" runat="server" CssClass="ExploreJMU" ImageUrl="Images/ExploreJMU.jpg" />

    <style>
        /*WAS HAVING ISSUE WITH CURRENT PICTURE FITTING WHOLE SCREEN SO I HAD TO FIND A NEW ONE*/
        .ExploreJMU {
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

   <%-- <asp:Button ID="btnNewCyberDay1" runat="server" Text="Add a New CyberDay" type="button" class="btn btn=lg btn-primary btn-block" Width="160" Height="70"></asp:Button>--%>

    <section>

        <h1>TEACHER HOME</h1>
        <hr />

        <h3><a href="TeacherRegister.aspx">REGISTER A TEACHER</a></h3>
        <br />
        <p>Click here to register a teacher for a CyberDay.</p>
        <hr />


    </section>
</asp:Content>