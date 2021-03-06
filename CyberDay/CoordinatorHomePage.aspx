﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="CoordinatorHomePage.aspx.cs" Inherits="CyberDay.CoordinatorHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Image ID="CyberDay" runat="server" CssClass="CyberDay" ImageUrl="Images/cyberdayPic.jpg" />

    <style>
        /*WAS HAVING ISSUE WITH CURRENT PICTURE FITTING WHOLE SCREEN SO I HAD TO FIND A NEW ONE*/
        .CyberDay {
            width: 50%;
            display: block;
            margin-left: auto;
            margin-right: auto;
            
            
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

        <h1>COORDINATOR HOME</h1>
        <hr />

        <h3><a href="NewCyberDay.aspx">NEW CYBERDAY</a></h3>
        <br />
        <p>Click here to create a new cyberday, add a school to the date, and a contact.</p>
        <hr />

        <h3><a href="CoordinatorEvents.aspx">ADD TO SCHEDULE FOR AN EXISTING CYBERDAY</a></h3>
        <br />
        <p>Click here to add to the schedule for an existing CyberDay.</p>
        <hr />

        <h3><a href="NewVolunteer.aspx">ADD A VOLUNTEER</a></h3>
        <br />
        <p>Here you will be able to save a new volunteer to the system.</p>
        <hr />

        <h3><a href="AssignVolunteer.aspx">ASSIGN A VOLUNTEER</a></h3>
        <br />
        <p>Here you will be able to assign a volunteer to any given CyberDay.</p>
        <hr />

        <h3><a href="EventRosters.aspx">ROSTERS</a></h3>
        <br />
        <p>Here you will be able to select from a variety of roster options.</p>
        <hr />

        <h3><a href="MealTicket.aspx">MEAL TICKETS</a></h3>
        <br />
        <p>Here you will be able to view meal ticket information needed for a CyberDay.</p>
        <hr />

        <h3><a href="CoordinatorStudentForms.aspx" >FORMS ROSTER</a></h3>
        <br />
        <p>Here you will be able to view which students have had permission and photo release forms submitted for.</p>
        <hr />

        <h3><a href="CoordinatorTableauDashboard.aspx">TABLEAU</a></h3>
        <br />
        <p>Here you will be able to view our Tableau tables highlighting a couple different data visualization options.</p>
        <hr />


    </section>
</asp:Content>