<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="OtherFacultyMembers.aspx.cs" Inherits="CyberDay.OtherFacultyMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddFaculty" runat="server" Text="Add Other Faculty Members Attending with the Contact Teacher: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirst" runat="server" ControlToValidate="txtFirst" Text="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpFirstString" runat="server" ControlToValidate="txtFirst" Operator="DataTypeCheck" Type="String" Text="Text Box is for First Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLast" runat="server" Text="Last Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqLast" runat="server" Text="Last Name is required" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpLastString" runat="server" ControlToValidate="txtLast" Operator="DataTypeCheck" Type="String" Text="Text Box is for Last Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmail" runat="server" Text="JMU Email Address: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" Text="Last Name is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpEmail" runat="server" Text="Text Box is for Email Address" ControlToValidate="txtEmail" Operator="DataTypeCheck" Type="String" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblShirtSize" runat="server" Text="Shirt Size: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlShirtSize" runat="server" >
                        <asp:ListItem Selected="True" Text="S" Value="S"></asp:ListItem>
                        <asp:ListItem Text="M" Value="M"></asp:ListItem>
                        <asp:ListItem Text="L" Value="L"></asp:ListItem>
                        <asp:ListItem Text="XL" Value="XL"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSelectContactTeacher" runat="server" Text="Select Teacher Contact with which Faculty Member is Attending: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSelectContactTeacher" runat="server">  </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddToCyberDay" runat="server" Text="Add Faculty Member: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnAddtoCyberDay" runat="server" Text="Add" OnClick="btnAddtoCyberDay_Click" />
                </asp:TableCell>
            </asp:TableRow>           
        </asp:Table>
    </fieldset>

    <%--<asp:SqlDataSource ID="sqlPopulateDdl" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />--%>

</asp:Content>
