<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonAdminCreateAccount.aspx.cs" Inherits="CyberDay.NonAdminCreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Create an Account</h2>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblReEnterPass" runat="server" Text="Re-Enter Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRePassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserType" runat="server" Text="Select User Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlUser" runat="server">
                            <asp:ListItem Text="--Select--"></asp:ListItem>
                            <asp:ListItem Text="Teacher"></asp:ListItem>
                            <asp:ListItem Text="Parent"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn" runat="server" Text="Create User" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
