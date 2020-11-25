<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="CyberDay.StudentUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
  <style>
    
    body{
      background-color: #eee;
      /*background-image: linear-gradient(to right, #934DE7 , #EBD9FF);*/
    }
     .test{
        position: relative;
        left: 300px;
        top: 100px;
        border: solid 1px;
        border-radius: 25px;
        /*background-color: #F9F9F9;*/
        padding-top: 100px;
        padding-bottom: 100px;
        padding-right: 150px;
        padding-left: 150px;
        margin-right: 700px;
        text-align: center;
        background-color: #fff;
        margin-bottom: 80px;
       

       
     }

</style>
   <div class="wrapper"> 
    <div class ="test">
    
        
        <h2 class ="display-4"> Upload your finished project</h2>
        <br />
        <br />

        
        <asp:TextBox ID="studentNametxt" runat="server" placeholder="Name" class="form-control"></asp:TextBox>

        <br />
        <br />
    
        
        
        <asp:FileUpload id="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator 
             ID="fileRequiredFV"
             runat="server" 
             ErrorMessage=" * Required *" 
             ControlToValidate="FileUpload1" 
             SetFocusOnError="true" 
             ForeColor="Red">

         </asp:RequiredFieldValidator>
        <br />
        <br />
            
       <h5>Comments:</h5>
        <asp:TextBox ID="cmmttxt" runat="server" Height="100px" Width="500px" TextMode="MultiLine" class="form-control" ></asp:TextBox>
        <br />
        <br />
       
        <asp:Button runat="server" id="uploadBttn" text="Submit" onclick="uploadbttn_Click" class="btn btn-primary"/>
        <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
        
       
    
    </div>
</div>-


</asp:Content>