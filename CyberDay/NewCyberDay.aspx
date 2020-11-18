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
                        <asp:Label ID="lblNewCyberDay" runat="server" Text="Create a New CyberDay" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <br />
                        <asp:Label ID="lblDate" runat="server" Text="Set a Date: " ></asp:Label>

                        <asp:DropDownList ID="ddlMonth" runat="server">
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
                        <asp:Label ID="lbl1" runat="server" Text=" / "></asp:Label>
                        <asp:DropDownList ID="ddlDay" runat="server" >
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
                            <asp:ListItem Text="13" Value="13"></asp:ListItem>
                            <asp:ListItem Text="14" Value="14"></asp:ListItem>
                            <asp:ListItem Text="15" Value="15"></asp:ListItem>
                            <asp:ListItem Text="16" Value="16"></asp:ListItem>
                            <asp:ListItem Text="17" Value="17"></asp:ListItem>
                            <asp:ListItem Text="18" Value="18"></asp:ListItem>
                            <asp:ListItem Text="19" Value="19"></asp:ListItem>
                            <asp:ListItem Text="20" Value="20"></asp:ListItem>
                            <asp:ListItem Text="21" Value="21"></asp:ListItem>
                            <asp:ListItem Text="22" Value="22"></asp:ListItem>
                            <asp:ListItem Text="23" Value="23"></asp:ListItem>
                            <asp:ListItem Text="24" Value="24"></asp:ListItem>
                            <asp:ListItem Text="25" Value="25"></asp:ListItem>
                            <asp:ListItem Text="26" Value="26"></asp:ListItem>
                            <asp:ListItem Text="27" Value="27"></asp:ListItem>
                            <asp:ListItem Text="28" Value="28"></asp:ListItem>
                            <asp:ListItem Text="29" Value="29"></asp:ListItem>
                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                            <asp:ListItem Text="31" Value="31"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbl2" runat="server" Text=" / "></asp:Label>
                        <asp:DropDownList ID="ddlYear" runat="server">
                            <asp:ListItem Selected="True" Text="2020" Value="2020"></asp:ListItem>
                            <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                            <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                            <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                            <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                            <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                            <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
                            <asp:ListItem Text="2027" Value="2027"></asp:ListItem>
                            <asp:ListItem Text="2028" Value="2028"></asp:ListItem>
                            <asp:ListItem Text="2029" Value="2029"></asp:ListItem>
                        </asp:DropDownList>
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

                
            </section>
        </div>
    <asp:SqlDataSource ID="SqlPopulateCoordinator" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT CoordinatorID, FirstName + ' ' + LastName AS CoordinatorDisplay FROM Coordinator ORDER BY CoordinatorID" />
   

</asp:Content>
