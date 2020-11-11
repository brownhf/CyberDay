<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentsHome.aspx.cs" Inherits="CyberDay.ParentsHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <style>
        section {
            width: 50%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
        }
    </style>
    <section class="active">
        <h3><a href="ParentsRegisterChild.aspx">Register My Child</a></h3>
        <br />
        <p>Register my child for a CyberDay!</p>
        <hr />
        <h3><a href="ParentChaperone.aspx">Want to be a Chaperone?</a></h3>
        <br />
        <p>Sign up to be a chaperone at a CyberDay Event!</p>
        <hr />
        <h3><a href="ParentPhotoReleaseForm.aspx">Child Photo Releazse Form</a></h3>
        <p>Sign and upload a photo release form so we can take pictures of your child at CyberDay!</p>
        <hr />
    </section>
</asp:Content>
