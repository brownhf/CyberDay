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

        .navbar navbar-expand-md navbar-dark {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h1 {
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
                        <ul class="nav navbar-nav ml-auto">
                            <li>
                                <%--<a href=""><span class=""></span>--%>
                                <%--<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-light" Visible="true" PostBackUrl="~/LoginPage.aspx"></asp:Button>--%>

                                <button type="button" id="btnUserLogin" runat="server" class="btn btn-light" onserverclick="btnUserLogin_ServerClick">
                                    Login
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-in-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"></path>
                                        <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path>
                                    </svg>
                                </button>

                                <asp:DropDownList ID="ddlUser" Visible="false" runat="server" CssClass="btn btn-light" AutoPostBack="true" OnSelectedIndexChanged="ddlUser_SelectedIndexChanged"></asp:DropDownList>
                                <%--</a>--%>
                            </li>
                        </ul>
                    </div>
                </nav>

                <nav class="navbar navbar-expand-md navbar-dark justify-content-center" style="background-color: #CBB677">
                    <ul class="nav navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" id="coordinatorLink" runat="server" href="" onserverclick="coordinatorLink_ServerClick">COORDINATORS</a>
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
                <br />

                <p>
                    By teaching others about Computer Information Systems, you will learn to develop advanced competencies and diagnostic skills to correct 
                    software problems. Mentorship in the CyberDay program, which is a collaborative effort between the College of Business (CoB) and the 
                    JMU Office of Admissions, will offer the opportunity to engage middle school students in animation programming or other computer technology 
                    activities.  Share your excitement in the field of computer information systems and cultivate the interests of young people in future 
                    business/technology related careers.
                </p>

                <br />

                <p>
                    According to Dr. Tom Dillon, co-director of CyberDay, “The JMU mission has always been to educate leaders. Our students exemplify that mission 
                    by not only being leaders in their academic studies, but also by leading these visiting young people to promising technology careers.”
                </p>

                <br />

                <p>
                    A successful diversity program, CyberDay/CyberCity has provided learning experiences for over 800 students and 100 teachers. This event is open
                    to all CIS majors, minors, and other students with the requisite skills. To get involved, contact, Tom Dillon, or Shawn Lough.
                </p>

                <br />

                <p>
                    CyberDay events can be designed for up to 50 middle and high school students. If your school is interested, please contact Tom Dillon, 
                    Co-Director of CyberDay (<a href="dillontw@jmu.edu">dillontw@jmu.edu</a>, 540-568-3015).
                </p>

                <br />
                <br />

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


