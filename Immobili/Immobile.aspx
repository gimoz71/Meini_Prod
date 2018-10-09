<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Immobile.aspx.vb" Inherits="Immobiliare_Web.fImmobile" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXCVhmczTbdOBT8Iwj8d79BeLNjYkZqIA"></script-->
    <!-- for Google -->
    <meta name="description" content="<%=des_share%>" />
    <link rel="image_src" href="<%=img_share%>" />

    <!-- for Facebook -->
    <meta property="og:title" content="<%=tit_share%>" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="<%=img_share%>" />
    <meta property="og:url" content="<%=url_share%>" />
    <meta property="og:description" content="<%=des_share%>" />

    <!-- for Twitter -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:url" content="<%=url_share%>" />
    <meta name="twitter:title" content="<%=tit_share%>" />
    <meta name="twitter:description" content="<%=des_share%>" />
    <meta name="twitter:image" content="<%=img_share%>" />

    <!-- script type="text/javascript">


        // The latitude and longitude of italy
        var position = [<%=map_Position%>];
        var allMarkers = [];
        var allInfo = [];
        var geocoder;

        function showGoogleMaps() {

            var stylez = [
                {
                  featureType: "all",
                  elementType: "all",
                  stylers: [
                    { saturation: -100 } // <-- THIS
                  ]
                }
            ];

            var latLng = new google.maps.LatLng(position[0], position[1]);

            var mapOptions = {
                zoom: <%=map_Zoom%>, // initialize zoom level - the max value is 21
                streetViewControl: false, // hide the yellow Street View pegman
                zoomControl: true, // allow users to zoom the Google Map
                zoomControlOptions: {
                    style: google.maps.ZoomControlStyle.SMALL
                },
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: latLng
            };

            map = new google.maps.Map(document.getElementById('googlemaps'), mapOptions);

            var mapType = new google.maps.StyledMapType(stylez, { name:"Grayscale" });
            map.mapTypes.set('googlemaps', mapType);
            map.setMapTypeId('googlemaps');

            <%=GetMarkers()%>

            geocoder = new google.maps.Geocoder();

        }

        google.maps.event.addDomListener(window, 'load', showGoogleMaps);


        function getInfowindowsData(title, indirizzo) {
            var contentString = '<div id="content" style="width:400px">' +
              '<div id="siteNotice">' +
              '</div>' +
              '<h2 id="firstHeading">' + title + '</h2>' +
              '<div id="bodyContent">' +
              '<p><b>' + indirizzo + '</b></p>' +
              '</div>' +
              '</div>';
            return contentString;
        }
    </script -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <style type="text/css">
        @media print {
            #header,navbar,footer, .text, button, .btn, #ct-ultimate-gdpr-cookie-open {
                display: none;
            }
            .break {page-break-after: always;}
        }
    </style>

    <style>
        .slsh * {box-sizing:border-box}

        /* Slideshow container */
        .slideshow-container {
        max-width: 1000px;
        position: relative;
        margin: auto;
        }

        /* Hide the images by default */
        .mySlides {
            display: none;
        }

        /* Next & previous buttons */
        .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        margin-top: -22px;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        }

        /* Position the "next button" to the right */
        .next {
        right: 0;
        border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover, .next:hover {
        background-color: rgba(0,0,0,0.8);
        }

        /* Caption text */
        .text {
        color: #f2f2f2;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
        cursor: pointer;
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
        }

        .active, .dot:hover {
        background-color: #717171;
        }

        /* Fading animation */
        .fade {
        -webkit-animation-name: fade;
        -webkit-animation-duration: 1.5s;
        animation-name: fade;
        animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
        from {opacity: .4} 
        to {opacity: 1}
        }

        @keyframes fade {
        from {opacity: .4} 
        to {opacity: 1}
        }
    </style>

    <div class="content">
        <div class="container">
            <div class="row break">
                <div class="col-md-8 wow fadeInUpSmall slsh" data-wow-delay="0s">
                    <div class="slideshow-container">
                        
                        <asp:Repeater ID="rpt_immagini" runat="server">
                            <ItemTemplate>
                                <div class="mySlides wow fadeIn">
                                    <div class="numbertext"><asp:Literal ID="ltl_number" runat="server"></asp:Literal></div>
                                    <img class="thumb-item" src="/assets/images/slider_home.jpg" id="img_immagine" runat="server">
                                    <div class="text"><asp:Literal ID="ltl_caption" runat="server"></asp:Literal></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <!-- Next and previous buttons -->
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                    </div>
                </div>
                <div class="col-md-4 wow fadeInUpSmall" data-wow-delay="0.3s">
                    <h3 class="immobile"><asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal></h3>
                    <div class="col-md-12">
                        <h5 class="tipologia"><asp:Literal ID="ltl_categoria" runat="server"></asp:Literal></h5>
                        <ul class="info">
                            <li><span>Riferimento:</span><asp:Literal ID="ltl_riferimento" runat="server"></asp:Literal></li>
                            <li><span>Abitazione:</span><asp:Literal ID="ltl_superfice" runat="server"></asp:Literal></li>
                            <li><span><%=Lingua.CaricaLingua("lgl_immobili_camere")%>:</span><asp:Literal ID="ltl_camere" runat="server"></asp:Literal></li>
                            <li><span><%=Lingua.CaricaLingua("lgl_immobili_info_ce")%>:</span><asp:Literal ID="ltl_ai_classe" runat="server"></asp:Literal></li>
                            <li><span>Condizioni:</span><asp:Literal ID="ltl_tipo_annuncio" runat="server"></asp:Literal></li>
                            <li><span>Prezzo:</span>€ <asp:Literal ID="ltl_prezzo" runat="server"></asp:Literal></li>
                        </ul>
                    </div>
                    <div class="row hidden">
                        <div class="amenities col-xs-12 col-sm-6 col-md-6">
                            <h3><%=Lingua.CaricaLingua("lgl_immobili_accessori")%></h3>
                            <div class="row">
                                <asp:Repeater ID="rpt_accessorio" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 amItem" id="div_accessorio" runat="server">
                                        <span class="fa fa-close" id="ico_accessorio" runat="server"></span>
                                        <asp:Literal ID="ltl_tab_accessori_desc" runat="server"></asp:Literal>
                                    </div>
                                </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <div class="additional col-xs-12 col-sm-6 col-md-6 col-lg-4 hidden">
                        <h3>
                            <%=Lingua.CaricaLingua("lgl_immobili_altre_info")%></h3>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_prestigio" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_prestigio")%></strong></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_vista_mare" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_vista_mare")%></strong></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_distanza" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_distanta_mare")%></strong>: <asp:Literal ID="ltl_ai_distanza" runat="server"></asp:Literal></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_unita" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_unita")%></strong>: <asp:Literal ID="ltl_ai_unit" runat="server"></asp:Literal></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_stanze" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_stanze")%></strong>: <asp:Literal ID="ltl_ai_room" runat="server"></asp:Literal></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_parcheggi" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_parcheggi")%></strong>: <asp:Literal ID="ltl_ai_park" runat="server"></asp:Literal></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_anno" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_costruita")%></strong>: <asp:Literal ID="ltl_ai_anno" runat="server"></asp:Literal></div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 amItem" id="div_info_riscaldamento" runat="server">
                                <strong><%=Lingua.CaricaLingua("lgl_immobili_info_riscaldamento")%></strong>: <asp:Literal ID="ltl_ai_riscaldamento" runat="server"></asp:Literal> </div>
                        </div>
                    </div>
                    <p class="share hidden">
                        <span><%=Lingua.CaricaLingua("lgl_immobili_condividi")%>:</span> 
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<%=url_share%>"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
                            target="_blank" title="Share on Facebook" class="btn btn-sm btn-o">
                            <span class="fa fa-facebook"></span></a>
                        <a href="https://twitter.com/share?url=<%=url_share%>"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
                            target="_blank" title="Share on Twitter" class="btn btn-sm btn-o"><span
                                class="fa fa-twitter"></span </a>
                        <a href="https://plus.google.com/share?url=<%=url_share%>"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=350,width=480');return false;"
                            target="_blank" title="Share on Google+" class="btn btn-sm btn-o"><span
                                class="fa fa-google-plus"></span></a>
                        <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=<%=url_share%>&amp;title=Meini+Immobiliare"
                            title="Share on LinkedIn" class="btn btn-sm btn-o" target="_blank">
                            <span class="fa fa-linkedin"></span></a>
                    </p>
                    <div class="col-xs-12"style="margin-top: 20px;">
                        <a href="#" class="btn btn-danger">Stampa scheda</a> 
                        
                        <a data-toggle="modal" href="#contactAgent" class="btn btn-danger"
                            id="btn_info" runat="server">
                            <%=Lingua.CaricaLingua("lgl_immobile_richiedi_info")%>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 wow fadeInUpSmall" data-wow-delay="0.6s">
                    <h2>
                        Descrizione</h2>
                    <p>
                        <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></p>
                </div>
            </div>
        </div>
        <div class="modal fade" id="contactAgent" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="fa fa-close"></span></button>
                        <h4 class="modal-title" id="contactLabel">
                            <%=Lingua.CaricaLingua("lgl_immobile_contattaci")%>&nbsp;
                            Rif:<asp:Literal ID="ltl_contatti_riferimento" runat="server"></asp:Literal>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="contactForm">
                            <div class="row">
                                <div class="alert alert-danger" id="div_message_ko" runat="server">
                                    <span>
                                        <asp:Literal ID="ltl_message_ko" runat="server"></asp:Literal>
                                    </span>
                                </div>
                                <div class="alert alert-success" id="div_message_ok" runat="server">
                                    <span>
                                        <asp:Literal ID="ltl_message_ok" runat="server"></asp:Literal>
                                    </span>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="ca_response"></div>
                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="ca_name"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_nome")%> <span class="text-red">*</span></label>
                                        <asp:TextBox ID="txt_nome" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="ca_email"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_mail")%> <span class="text-red">*</span></label>
                                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="ca_email"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_telefono")%> <span class="text-red">*</span></label>
                                        <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="form-group">
                                        <label for="ca_subject"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_oggetto")%> <span class="text-red">*</span></label>
                                        <asp:TextBox ID="txt_oggetto" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="form-group">
                                        <label for="ca_message"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_messaggio")%> <span class="text-red">*</span></label>
                                        <asp:TextBox ID="txt_messaggio" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-gray"><%=Lingua.CaricaLingua("lgl_immobile_contattaci_chiudi")%></a>
                        <asp:LinkButton ID="btn_contatto_invia" runat="server" CssClass="btn btn-green" >
                            <%=Lingua.CaricaLingua("lgl_immobile_contattaci_invia")%>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="viewVideo" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <!--iframe width="854" height="480" src="https://www.youtube.com/embed/BPNTC7uZYrI" frameborder="0" allowfullscreen></iframe-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    
    </script>
</asp:Content>

