<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorPages.Master" AutoEventWireup="true" CodeBehind="CoordinatorTableauDashboard.aspx.cs" Inherits="CyberDay.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #tableau {
            display: flex;
            justify-content: center;
            width: 100%;
        }
    </style>
    <span id="tableau">
        <script type='text/javascript' src='https://prod-useast-b.online.tableau.com/javascripts/api/viz_v1.js'></script>
        <div class='tableauPlaceholder' style='width: 1000px; height: 827px;'>
            <object class='tableauViz' width='1000' height='827' style='display: none;'>
                <param name='host_url' value='https%3A%2F%2Fprod-useast-b.online.tableau.com%2F' />
                <param name='embed_code_version' value='3' />
                <param name='site_root' value='&#47;t&#47;fiveguysconsulting' />
                <param name='name' value='tableau484Dashboard&#47;Dashboard1&#47;vaccardd@dukes.jmu.edu&#47;5100df55-d715-4320-94dc-1119597da62b' />
                <param name='tabs' value='no' />
                <param name='toolbar' value='yes' />
                <param name='showAppBanner' value='false' />
            </object>
        </div>
    </span>
</asp:Content>
