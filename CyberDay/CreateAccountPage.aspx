<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccountPage.aspx.cs" Inherits="CyberDay.CreateAccountPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    body {
        background: #eee;
    }

    .wrapper {
        margin: 80px;
    }

    .form-signin {
        max-width: 380px;
        margin: 0 auto;
        background-color: #fff;
        padding: 15px 40px 50px;
        border: 1px solid #e5e5e5;
        border-radius: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">

        <div class="wrapper">
            <section class="form-signin" runat="server">
                Username:
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <br />
                <br />
                Password:
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <br />
                <br />
                UserType:
                <asp:DropDownList ID="drpDwnUserType" runat="server"></asp:DropDownList>
                <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" />
                <br />
                <br />
                <asp:Label ID="lblBlankAccountCreated" runat="server" Text="" ForeColor="Green"></asp:Label>
                <asp:LinkButton ID="lnkBtnLogin" runat="server" PostBackUrl="~/LoginPage.aspx" Visible="false">Click Here</asp:LinkButton>
                <asp:Label ID="lblReturnToLogin" runat="server" Text=" to return back to the Login Page." Visible="false"></asp:Label>
            </section>
        </div>
    </form>
</body>
</html>
