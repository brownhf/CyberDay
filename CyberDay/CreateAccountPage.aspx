<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccountPage.aspx.cs" Inherits="CyberDay.CreateAccountPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username: <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <br />
            Password: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" />
            <br />
            <asp:Label ID="lblBlankAccountCreated" runat="server" Text="" ForeColor="Green"></asp:Label>
            <asp:LinkButton ID="lnkBtnLogin" runat="server" PostBackUrl="~/LoginPage.aspx" Visible="false">Click Here</asp:LinkButton>
            <asp:Label ID="lblReturnToLogin" runat="server" Text=" to return back to the Login Page." Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
