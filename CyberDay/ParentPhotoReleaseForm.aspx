<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentPhotoReleaseForm.aspx.cs" Inherits="CyberDay.ParentPhotoReleaseForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ParentContentPlaceHolder" runat="server">
    <style>
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 20px;
        }

        body {
            background: #eee;
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
    </style>
    <div class="wrapper">
        <section class="activityInfo">
            <fieldset class="info">
                <h3>Upload Student Release Form</h3>
                <br />
                <br />
                <asp:Label ID="lblRelease" runat="server" Text="Upload Release Form: " ForeColor="Purple"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </fieldset>
        </section>
    </div>
</asp:Content>

