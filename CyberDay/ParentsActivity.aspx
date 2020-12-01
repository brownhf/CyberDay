<%@ Page Title="" Language="C#" MasterPageFile="~/Parents.Master" AutoEventWireup="true" CodeBehind="ParentsActivity.aspx.cs" Inherits="CyberDay.WebForm3" %>

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
                <asp:Label ID="lblRegisterWelcome" runat="server" Text="" Font-Size="X-Large"></asp:Label> 
                <br />
                <asp:GridView ID="gvActivities" runat="server"></asp:GridView>
                <br />
                <br />
                <asp:Label ID="lblAct1" runat="server" Text="Activity 1:"></asp:Label>
                <asp:DropDownList ID="ddlActivity1" runat="server" AutoPostBack="true"></asp:DropDownList>
                <asp:Label ID="lblErrorActivity1" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="lblAct2" runat="server" Text="Activity 2:"></asp:Label>
                <asp:DropDownList ID="ddlActivity2" runat="server" AutoPostBack="true"></asp:DropDownList>
                <asp:Label ID="lblErrorActivity2" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
                <br />
                <asp:Label ID="lblSignUpError" runat="server" Text="" ForeColor="Green"></asp:Label>
                <asp:Button ID="btnDone" runat="server" Text="Finished->" OnClick="btnDone_Click" />
            </fieldset>
        </section>
    </div>
</asp:Content>
