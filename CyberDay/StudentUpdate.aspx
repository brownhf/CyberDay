<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="CyberDay.StudentUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class ="upload">
    
        <fieldset>
        <legend><a> Upload your finished project</a></legend>
    
        <asp:FileUpload id="FileUpload1" runat="server" />
        <br />
            
        <h5>Comments:</h5>
        <asp:TextBox ID="cmmttxt" runat="server" Height="100px" Width="500px" TextMode="MultiLine"></asp:TextBox>
        <br />
       
        <asp:Button runat="server" id="uploadBttn" text="Submit" onclick="uploadbttn_Click" CssClass="fileTxt" />
        <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
           
        </fieldset>
    
    </div>



</asp:Content>