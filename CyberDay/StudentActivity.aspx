<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages.Master" AutoEventWireup="true" CodeBehind="StudentActivity.aspx.cs" Inherits="CyberDay.StudentActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    



  <style>
 
    
    body {
            background: #eee;
           /* background-image: linear-gradient(150deg, #A252FF 10%, #CBB677 100%);*/
        }

        section {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        p{
            margin-bottom: 20px;
        }

        .wrapper {
            margin: 80px;
        }

        .activityInfo {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 15px 40px 50px;
            border: 1px solid #e5e5e5;
            border-radius: 10px;
        }
        .cyberDayDDL{
            margin-right: 10px;
        }
        .eventDDL{
            margin-right: 10px;
        }
        .dwnldBttn{
            margin-top: 10px;
        }

        .cybDDL{
            margin-right: 50px;
            width: 200px;
            height: 50px;
            border-radius: 25px;
            padding-left: 50px;
            
        }
        .dv{
            text-align: center;
            padding: 50px;
            margin-left: 150px;
            
        }

        
        
        
    </style>

    <div class="wrapper">

        <section class="activityInfo">

            <fieldset class="info">

              
              <h1>VIEW ACTIVITY INFORMATION</h1>
                <p>Here you will be able to see information regarding CyberDay. You will be able to find out more about various tasks and their related instructions.</p>
                
                <div class ="DDL"> 
                    <asp:DropDownList ID="cyberDayDDL" 
                        runat="server"  
                        AutoPostBack="true" 
                        CssClass="cybDDL" 
                        DataSourceID="cyberDayDS" 
                        DataTextField="Date" 
                        DataValueField="CyberDayID">
                    </asp:DropDownList>
                    
                
                    <asp:Button ID="searchbttn" 
                        runat="server" 
                        Text="Search" 
                        OnClick="searchbttn_Click" 
                        class=" btn-primary btn" />
               </div>
               <br />
                       
                <asp:GridView
                    ID="gvActivity"
                    runat="server" 
                    Height="250px" 
                    Width="300px" 
                    CellPadding="2" 
                    CellSpacing="2"
                    HeaderStyle-Font-Bold="true" 
                    CssClass="dv" 
                    BorderColor="Purple" 
                    AlternatingRowStyle-BackColor="PaleGoldenrod"
                    EmptyDataText="No activities associated with this event">  
                </asp:GridView>
                <br />
                
                
                <asp:Button ID="pdfbttn" 
                runat="server" 
                Text="Export to Excel" 
                class=" btn-primary btn"
                OnClick="pdfbttn_Click" />
                
                <br />
            
            </fieldset>
        </section>
        <br />
        <br />   
    </div>

    <asp:SqlDataSource ID="cyberDayDS" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select CyberDayID, Date From CyberDay" ></asp:SqlDataSource>
    <asp:SqlDataSource ID="activityDS" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDayDB %>" SelectCommand="Select EventID, EventName From Event" ></asp:SqlDataSource>


</asp:Content>

