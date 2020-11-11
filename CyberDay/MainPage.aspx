<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CyberDay.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        .sectionContent {
            width: 75%;
            margin-left: auto;
            margin-right: auto;
        }

        .wilsonHall {
            max-width: 100%;
            height: auto;
        }

        .quad {
            max-width: 100%;
            height: auto;
        }

        footer {
            border-top: solid;
        }

        .navbar navbar-expand-md navbar-dark {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
        }

        .nav navbar-nav {
        }
        h1{
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>

                <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #450084">
                    <a href="MainPage.aspx" class="navbar-brand">JAMES MADISON UNIVERSITY: CyberDay</a>
                    <div class="collapse navbar-collapse">
                        <%--                        <ul class="nav navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="MainPage.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CoordinatorHomePage.aspx">Coordinators</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TeacherHomePage.aspx">Teachers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ParentsHome.aspx">Parents</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="StudentHome.aspx">Students</a>
                            </li>
                        </ul>--%>
                        <ul class="nav navbar-nav ml-auto">
                            <li><a href="LoginPage.aspx"><span class=""></span>Login</a></li>
                        </ul>
                    </div>
                </nav>


                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #CBB677">
                    <ul class="nav navbar-nav navbar-center">
                        <li class="nav-item active">
                            <a class="nav-link" href="LoginPage.aspx">COORDINATORS</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="TeacherHomePage.aspx">TEACHERS</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="ParentsHome.aspx">PARENTS</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="StudentHome.aspx">STUDENTS</a>
                        </li>
                    </ul>
                </nav>



                <asp:Image ID="Image2" CssClass="quad" runat="server" ImageUrl="~/Images/0.jpg" />

            </header>
            <section class="sectionContent" runat="server">
                <h1>ABOUT CYBERDAY</h1>
                This is where all the content/info about Cyber day will go...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...
                <br />
                <br />
                ...

                <footer>
                </footer>
            </section>
        </div>
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


