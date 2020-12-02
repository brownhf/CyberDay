<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="CoordinatorEvents.aspx.cs" Inherits="CyberDay.CoordinatorEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background: #eee;
        }
        section {
            width: 100%;
            margin-right: auto;
            margin-left: auto;
        }
        .wrapper {
            margin: 80px;
        }
        .newCyber {
            max-width: 1100px;
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
                    <asp:Table runat="server" CellPadding="10">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblBuildSchedule" runat="server" Text="Build a CyberDay Schedule" Font-Bold="true" Font-Size="Larger" ></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow></asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblCyberDay" runat="server" Text="Assign to CyberDay: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlCyberDay" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" ></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow></asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEventName" runat="server" Text="Activity Name: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtEventName" runat="server" Width="400px" AutoCompleteType="Disabled"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow></asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEventDescription" runat="server" Text="Activity Description: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtEventDescription" runat="server" Width="400px" Height="200px" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblBuilding" runat="server" Text="Building: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtBuilding" runat="server" Width="400px" AutoCompleteType="Disabled"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblRoomNumber" runat="server" Text="Room Number: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtRoomNumber" runat="server" Width="400px" AutoCompleteType="Disabled"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEventStartTime" runat="server" Text="Start Time: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlEventStartHour" runat="server">
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
                                <asp:Label ID="Label10" runat="server" Text=" : "></asp:Label>
                                <asp:DropDownList ID="ddlEventStartMinute" runat="server">
                                    <asp:ListItem Selected="True" Text="00" Value="00"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                    <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                    <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="Label11" runat="server" Text=" "></asp:Label>
                                <asp:DropDownList ID="ddlEventStartAmPm" runat="server">
                                    <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                                    <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblEventEnd" runat="server" Text="Ending Time: "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlEventEndHour" runat="server">
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
                                <asp:Label ID="Label4" runat="server" Text=" : "></asp:Label>
                                <asp:DropDownList ID="ddlEventEndMinute" runat="server">
                                    <asp:ListItem Selected="True" Text="00" Value="00"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                    <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                    <asp:ListItem Text="45" Value="45"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                <asp:DropDownList ID="ddlEventEndAmPm" runat="server">
                                    <asp:ListItem Selected="True" Text="am" Value="am" ></asp:ListItem>
                                    <asp:ListItem Text="pm" Value="pm"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnAddEvent" runat="server" Text="Add Activity to the CyberDay" OnClick="btnAddEvent_Click" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblAddStatusSuccessEvent" runat="server" Text="" ForeColor="Green"></asp:Label>
                                <asp:Label ID="lblAddStatusFailEvent" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </fieldset>
                <br />
                <br />
                <hr />
                <fieldset>
                    <asp:Table runat="server" CellPadding="10">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblGridviewTitle" runat="server" Text="View, Edit, and/or Delete Activities for a CyberDay" Font-Bold="true" Font-Size="Larger"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlCyberDay2" runat="server" DataSourceID="sqlPopulateCyberDay" DataTextField="CyberDayDisplay" DataValueField="CyberDayID" ></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button ID="btnRefreshEvents" runat="server" Text="View Activity Schedule for Selected CyberDay" OnClick="btnRefreshEvents_Click" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </fieldset>
                <br />
                <fieldset>
                                <asp:GridView ID="grdvEvents" runat="server" EmptyDataText="Selected CyberDay currently has no associated events" Caption="Activity Schedule:" AutoGenerateColumns="false" DataKeyNames="EventID" OnRowCancelingEdit="grdvEvents_RowCancelingEdit" OnRowEditing="grdvEvents_RowEditing" OnRowDeleting="grdvEvents_RowDeleting" OnRowUpdating="grdvEvents_RowUpdating">
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEventID" runat="server" Width="25" Text='<%# Eval("EventID") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Activity">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblActivity" runat="server" Width="100" Text='<%# Eval("EventName") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblDescription" runat="server" Width="300" Text='<%# Eval("Description") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Building">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblBuilding" runat="server" Width="100" Text='<%# Eval("Building") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Room Number">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblRoomNumber" runat="server" Width="100" Text='<%# Eval("RoomNumber") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Start Time">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblStartTime" runat="server" Width="75" Text='<%# Eval("StartTime") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="End Time">
                                            <ItemTemplate>
                                                <asp:TextBox ID="lblEndTime" runat="server" Width="75" Text='<%# Eval("EndTime") %>'></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="CyberDay ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCyberDayID" runat="server" Width="75" Text='<%# Eval("CyberDayID") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="true" />
                                        <asp:CommandField ShowDeleteButton="true" />
                                    </Columns>
                                </asp:GridView>
                </fieldset>
            </section>
    </div>
    <asp:SqlDataSource ID="sqlPopulateCyberDay" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="SELECT [dbo].[CyberDay].[CyberDayID], [dbo].[CyberDay].[Date] + ' Coordinated By: ' + [dbo].[Coordinator].[FirstName] + ' ' + [dbo].[Coordinator].[LastName] AS CyberDayDisplay FROM [dbo].[CyberDay], [dbo].[Coordinator] WHERE [dbo].[CyberDay].[CoordinatorID] = [dbo].[Coordinator].[CoordinatorID] ORDER BY [dbo].[CyberDay].[CyberDayID] DESC" />
</asp:Content>
