<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="NewCyberDay.aspx.cs" Inherits="CyberDay.NewCyberDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <div>
            <asp:Label ID="lblDate" runat="server" Text="Set a Date: " Font-Bold="true" Font-Size="Large" ></asp:Label>

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
            <asp:Label ID="lblStartTime" runat="server" Text="Set an Approximate Start Time" Font-Bold="true" Font-Size="Large" ></asp:Label>
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
                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                <asp:ListItem Text="09" Value="09"></asp:ListItem>
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
                <asp:ListItem Text="32" Value="32"></asp:ListItem>
                <asp:ListItem Text="33" Value="33"></asp:ListItem>
                <asp:ListItem Text="34" Value="34"></asp:ListItem>
                <asp:ListItem Text="35" Value="35"></asp:ListItem>
                <asp:ListItem Text="36" Value="36"></asp:ListItem>
                <asp:ListItem Text="37" Value="37"></asp:ListItem>
                <asp:ListItem Text="38" Value="38"></asp:ListItem>
                <asp:ListItem Text="39" Value="39"></asp:ListItem>
                <asp:ListItem Text="40" Value="40"></asp:ListItem>
                <asp:ListItem Text="41" Value="41"></asp:ListItem>
                <asp:ListItem Text="42" Value="42"></asp:ListItem>
                <asp:ListItem Text="43" Value="43"></asp:ListItem>
                <asp:ListItem Text="44" Value="44"></asp:ListItem>
                <asp:ListItem Text="45" Value="45"></asp:ListItem>
                <asp:ListItem Text="46" Value="46"></asp:ListItem>
                <asp:ListItem Text="47" Value="47"></asp:ListItem>
                <asp:ListItem Text="48" Value="48"></asp:ListItem>
                <asp:ListItem Text="49" Value="49"></asp:ListItem>
                <asp:ListItem Text="50" Value="50"></asp:ListItem>
                <asp:ListItem Text="51" Value="51"></asp:ListItem>
                <asp:ListItem Text="52" Value="52"></asp:ListItem>
                <asp:ListItem Text="53" Value="53"></asp:ListItem>
                <asp:ListItem Text="54" Value="54"></asp:ListItem>
                <asp:ListItem Text="55" Value="55"></asp:ListItem>
                <asp:ListItem Text="56" Value="56"></asp:ListItem>
                <asp:ListItem Text="57" Value="57"></asp:ListItem>
                <asp:ListItem Text="58" Value="58"></asp:ListItem>
                <asp:ListItem Text="59" Value="59"></asp:ListItem>
                <asp:ListItem Text="60" Value="60"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lbl4" runat="server" Text=" "></asp:Label>
            <asp:DropDownList ID="ddlAmPm" runat="server">
                <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <br />

        <div>
            <asp:Label ID="lblEndTime" runat="server" Text="Set an Approximate Ending Time" Font-Bold="true" Font-Size="Large" ></asp:Label>
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
                <asp:ListItem Text="01" Value="01"></asp:ListItem>
                <asp:ListItem Text="02" Value="02"></asp:ListItem>
                <asp:ListItem Text="03" Value="03"></asp:ListItem>
                <asp:ListItem Text="04" Value="04"></asp:ListItem>
                <asp:ListItem Text="05" Value="05"></asp:ListItem>
                <asp:ListItem Text="06" Value="06"></asp:ListItem>
                <asp:ListItem Text="07" Value="07"></asp:ListItem>
                <asp:ListItem Text="08" Value="08"></asp:ListItem>
                <asp:ListItem Text="09" Value="09"></asp:ListItem>
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
                <asp:ListItem Text="32" Value="32"></asp:ListItem>
                <asp:ListItem Text="33" Value="33"></asp:ListItem>
                <asp:ListItem Text="34" Value="34"></asp:ListItem>
                <asp:ListItem Text="35" Value="35"></asp:ListItem>
                <asp:ListItem Text="36" Value="36"></asp:ListItem>
                <asp:ListItem Text="37" Value="37"></asp:ListItem>
                <asp:ListItem Text="38" Value="38"></asp:ListItem>
                <asp:ListItem Text="39" Value="39"></asp:ListItem>
                <asp:ListItem Text="40" Value="40"></asp:ListItem>
                <asp:ListItem Text="41" Value="41"></asp:ListItem>
                <asp:ListItem Text="42" Value="42"></asp:ListItem>
                <asp:ListItem Text="43" Value="43"></asp:ListItem>
                <asp:ListItem Text="44" Value="44"></asp:ListItem>
                <asp:ListItem Text="45" Value="45"></asp:ListItem>
                <asp:ListItem Text="46" Value="46"></asp:ListItem>
                <asp:ListItem Text="47" Value="47"></asp:ListItem>
                <asp:ListItem Text="48" Value="48"></asp:ListItem>
                <asp:ListItem Text="49" Value="49"></asp:ListItem>
                <asp:ListItem Text="50" Value="50"></asp:ListItem>
                <asp:ListItem Text="51" Value="51"></asp:ListItem>
                <asp:ListItem Text="52" Value="52"></asp:ListItem>
                <asp:ListItem Text="53" Value="53"></asp:ListItem>
                <asp:ListItem Text="54" Value="54"></asp:ListItem>
                <asp:ListItem Text="55" Value="55"></asp:ListItem>
                <asp:ListItem Text="56" Value="56"></asp:ListItem>
                <asp:ListItem Text="57" Value="57"></asp:ListItem>
                <asp:ListItem Text="58" Value="58"></asp:ListItem>
                <asp:ListItem Text="59" Value="59"></asp:ListItem>
                <asp:ListItem Text="60" Value="60"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
            <asp:DropDownList ID="ddlAmPmEnd" runat="server">
                <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <br />

        <div>
            <asp:Label ID="lblCoordinator" runat="server" Text="Select a Coordinator for the Event: " Font-Bold="true" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="ddlCoordinator" runat="server" DataSourceID="sqlPopulateCoordinator" DataTextField="FullName" DataValueField="CoordinatorID" AutoPostBack="true"></asp:DropDownList>
        </div>

        <br />

        <div>
            <asp:Label ID="lblContact" runat="server" Text="Add Teacher Contact to the New CyberDay: " Font-Bold="true" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="ddlMiddleSchoolContact" runat="server" DataSourceID="sqlPopulateTeacher" DataTextField="FullName" DataValueField="TeacherID" AutoPostBack="true"></asp:DropDownList>
        </div>

        <br />
        <br />

        <div>
            <asp:Button ID="btnCreateCyberDay" runat="server" Text="Create New Cyberday" OnClick="btnCreateCyberDay_Click" />
        </div>
    </fieldset>

    <asp:SqlDataSource ID="sqlPopulateTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select TeacherID, FirstName + ' ' + LastName As FullName From Teacher" />
    <asp:SqlDataSource ID="sqlPopulateCoordinator" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="Select CoordinatorID, FirstName + ' ' + LastName As FullName From Coordinator" />

</asp:Content>
