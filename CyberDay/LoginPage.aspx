<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CyberDay.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css">
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

            .form-signin .form-signin-heading {
                margin-bottom: 30px;
            }

            .form-signin input[type="text"] {
                margin-bottom: 20px;
                margin-top: 10px;
            }

            .form-signin input[type="password"] {
                margin-bottom: 30px;
            }
    </style>
</head>
<body>
    <form id="form2" runat="server">

        <div class="wrapper">
            <section class="form-signin" runat="server">
                <h2 class="form-signin-heading text-center">Login</h2>

                <%--<div class="btn-group">
                    <asp:Button ID="drpDwnUserType" runat="server" Text="User Type" type="button" onclick="drpDwnUserType_Click" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                        
                    </asp:Button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Coordinator</a>
                        <a class="dropdown-item" href="#">Teacher</a>
                        <a class="dropdown-item" href="#">Student</a>
                    </div>
                </div>--%>
                <asp:Label ID="lblBlankIncorrectLogin" runat="server" Text="" ForeColor="Red" Font-Size="Smaller"></asp:Label>
                <asp:Label ID="lblUserType" runat="server" Text="User Type: "></asp:Label>
                <br />
                <asp:RadioButton ID="rBtnCoordinator" Text="Coordinator" runat="server" GroupName="userType" />
                <asp:Label ID="Div1" runat="server" Text="  ||  "></asp:Label>
                <asp:RadioButton ID="rBtnTeacher" Text=" Teacher" runat="server" GroupName="userType" />
                <asp:Label ID="Div2" runat="server" Text="  ||  "></asp:Label>
                <asp:RadioButton ID="rBtnStudent" Text=" Student" runat="server" GroupName="userType" />

                <input id="txtUsername" runat="server" type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
                <input id="txtPassword" runat="server" type="password" class="form-control" name="password" placeholder="Password" required="" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" class="btn btn=lg btn-primary btn-block"></asp:Button>
                <asp:Label ID="lblCreateAccount" runat="server" Font-Size="Smaller" Text=" Not Registered? Click here to "></asp:Label><asp:LinkButton ID="lnkBtnCreateAccount" Font-Size="Smaller" runat="server" PostBackUrl="~/CreateAccountPage.aspx">Create an Account</asp:LinkButton>
            </section>

        </div>
    </form>
</body>
</html>