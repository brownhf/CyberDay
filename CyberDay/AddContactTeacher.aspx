<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal.Master" AutoEventWireup="true" CodeBehind="AddContactTeacher.aspx.cs" Inherits="CyberDay.AddContactTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddTeacherContact" runat="server" Text="Create and Add a New Teacher Contact to a CyberDay: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFirst" runat="server" Text="First Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirst" runat="server" ControlToValidate="txtFirst" Text="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpFirstString" runat="server" ControlToValidate="txtFirst" Operator="DataTypeCheck" Type="String" Text="Text Box is for First Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLast" runat="server" Text="Last Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqLast" runat="server" Text="Last Name is required" ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpLastString" runat="server" ControlToValidate="txtLast" Operator="DataTypeCheck" Type="String" Text="Text Box is for Last Name" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" Text="Last Name is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpEmail" runat="server" Text="Text Box is for Email Address" ControlToValidate="txtEmail" Operator="DataTypeCheck" Type="String" ForeColor="Red"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Phone Number is Required" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSchool" runat="server" Text="School Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSchool" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSchool" runat="server" Text="Last Name is required" ControlToValidate="txtSchool" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpSchool" runat="server" ControlToValidate="txtSchool" Operator="DataTypeCheck" Type="String" Text="Text Box is for School Name" ForeColor="Red"></asp:CompareValidator>
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
                    <asp:Label ID="lblAddToCyberDay" runat="server" Text="Add Teacher Contact to Selected CyberDay: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlAddToCyberDay" runat="server">  </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAddContact" runat="server" Text="Add Teacher Contact: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnAddContact" runat="server" Text="Add" OnClick="btnAddContact_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </fieldset>

    <%--<asp:SqlDataSource ID="sqlPopulateDdl" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="" />--%>

</asp:Content>
