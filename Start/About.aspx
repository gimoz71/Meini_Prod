<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="About.aspx.vb" Inherits="Immobiliare_Web.About" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>

<%@ Register src="../Immobili/Immobili_Right.ascx" tagname="Immobili_Right" tagprefix="imm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Crimson+Text' rel='stylesheet'
        type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row pb40" style="text-align:center; margin-top:50px; ">
        <h1 class="osLight titolo_index" style="margin-top:0px!Important;"><b>
                <%=Lingua.CaricaLingua("lgl_about_title")%></b></h1>
        <div class="s-text osLight" style="color:Black!Important; padding-right:0px!Important; padding-left:0px!Important; text-align:center;
            font-size:17px;">
            <%=Lingua.CaricaLingua("lgl_about_desc")%></div>
    </div>
    <div class="row" style="margin-top:70px;">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <h2 class="osLight titolo_index" style="margin-top:0px!Important;">
                <%=Lingua.CaricaLingua("lgl_about_p1_title")%></h2>
            <div class="">
                <div class="s-text osLight" style="color:Black!Important; padding-right:0px!Important; padding-left:0px!Important;
                    font-size:15px;">
                    <%=Lingua.CaricaLingua("lgl_about_p1_desc")%></div>
            </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="pb40">
                <img src="../Assets/images/about_p1.jpg" class="img-responsive" alt="<%=Lingua.CaricaLingua("lgl_about_p1_title")%>" />
            </div>
        </div>
    </div>
    <div class="row" style="margin-top:70px; margin-bottom:70px;">
        <div class="hidden-xs col-sm-6 col-md-6 col-lg-6">
            <div class="pb40">
                <img src="../Assets/images/about_p2.jpg" class="img-responsive"/>
            </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <h2 class="osLight titolo_index" style="margin-top:0px!Important;">
                <%=Lingua.CaricaLingua("lgl_about_p2_title")%></h2>
            <div class="">
                <div class="s-text osLight" style="color:Black!Important; padding-right:0px!Important; padding-left:0px!Important;
                    font-size:15px;">
                    <%=Lingua.CaricaLingua("lgl_about_p2_desc")%></div>
            </div>
        </div>
        <div class="visible-xs col-sm-6 col-md-6 col-lg-6">
            <div class="pb40">
                <img src="../Assets/images/about_p2.jpg" class="img-responsive" alt="<%=Lingua.CaricaLingua("lgl_about_p2_title")%>" />
            </div>
        </div>
    </div>
    <div class="row">
        <!--div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
            <img src="../assets/uploads/2014/12/avatar-2.png" class="testim-avatar" alt="Jane Smith"
                style="width: 100px; height: 100px;"></div-->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2 class="osLight titolo_index" style="margin-top:0px!Important;">
                    <%=Lingua.CaricaLingua("lgl_about_p3_title")%></h2>
            <div class="home-testim-text">
                <%=Lingua.CaricaLingua("lgl_about_p3_desc")%></div>
            <div class="home-testim-name">
                <%=Lingua.CaricaLingua("lgl_about_p3_autor")%></div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="pb40" style="margin-top:30px;">
                <img src="../Assets/images/about_p3.jpg" class="img-responsive" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
