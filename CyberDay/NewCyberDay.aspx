<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="NewCyberDay.aspx.cs" Inherits="CyberDay.NewCyberDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background: #eee;
        }
        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }
        .wrapper {
            margin: 80px;
        }
        .newCyber {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
    </style>    
    
    <div class="wrapper">
            <section class="newCyber">
                <fieldset>
                    <div>
                        <asp:Label ID="lblNewCyberDay" runat="server" Text="Step 1: Create a New CyberDay" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <br />
                        <asp:Label ID="lblDate" runat="server" Text="Set a Date: " ></asp:Label>
                        <asp:Calendar ID="Calendar1" runat="server">
                        </asp:Calendar>
                    </div>

                    <br />

                    <div>
                        <asp:Label ID="lblStartTime" runat="server" Text="Set an Approximate Start Time: " ></asp:Label>
                        <asp:DropDownList ID="ddlHour" runat="server">
                            <asp:ListItem Selected="True" Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbl3" runat="server" Text=" : "></asp:Label>
                        <asp:DropDownList ID="ddlMinute" runat="server">
                            <asp:ListItem Selected="True" Text="00" Value="00"></asp:ListItem>
                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                            <asp:ListItem Text="45" Value="45"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbl4" runat="server" Text=" "></asp:Label>
                        <asp:DropDownList ID="ddlAmPm" runat="server">
                            <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                            <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <br />

                    <div>
                        <asp:Label ID="lblEndTime" runat="server" Text="Set an Approximate Ending Time: " ></asp:Label>
                        <asp:DropDownList ID="ddlHourEnd" runat="server">
                            <asp:ListItem Selected="True" Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label2" runat="server" Text=" : "></asp:Label>
                        <asp:DropDownList ID="ddlMinuteEnd" runat="server">
                            <asp:ListItem Selected="True" Text="00" Value="00"></asp:ListItem>
                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                            <asp:ListItem Text="45" Value="45"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                        <asp:DropDownList ID="ddlAmPmEnd" runat="server">
                            <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                            <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <br />

                    <div>
                        <asp:Label ID="lblAddCoordinator" runat="server" Text="Select the CyberDay Coordinator: "></asp:Label>
                        <asp:DropDownList ID="ddlAddCoordinator" runat="server" DataSourceID="sqlPopulateCoordinator" DataTextField="CoordinatorDisplay" DataValueField="CoordinatorID"></asp:DropDownList>
                    </div>

                    <br />

                    <div>
                        <asp:Button ID="btnCreateCyberDay" runat="server" Text="Create New Cyberday" OnClick="btnCreateCyberDay_Click" />
                    </div>

                    <br />

                    <div>
                        <asp:Label ID="lblAddStatusSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                        <asp:Label ID="lblAddStatusFail" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                </fieldset>
                <br />
                <br />
                <fieldset>
                    <asp:Button ID="btnStep2" runat="server" Text="Proceed To Step 2: School Registration" OnClick="btnStep2_Click" />
                </fieldset>
                

                
            </section>
        </div>
    <asp:SqlDataSource ID="SqlPopulateCoordinator" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT CoordinatorID, FirstName + ' ' + LastName AS CoordinatorDisplay FROM Coordinator ORDER BY CoordinatorID" />
</asp:Content>
