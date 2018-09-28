<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Preferiti.aspx.vb" Inherits="Immobiliare_Web.Preferiti" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="../Controls/rULDropDown.ascx" TagName="rULDropDown" TagPrefix="cc" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel ID="upd_ricerca" runat="server">
        <ContentTemplate>
            <div id="">
                <div class="content" style="background-color: White!Important; width: 100%!Important;">
                    <div class="resultsList" style="background-color: #f3f3f3!Important">
                        <h1 class="pull-left">
                            <%=Lingua.CaricaLingua("lgl_preferiti_elenco")%></h1>
                        <div class="pull-right sort">
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="row">
                            <asp:Repeater ID="rpt_immobili" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                                        <asp:HyperLink ID="lnk_immobile" runat="server" CommandName="GO" CssClass="card">
                                            <div class="figure">
                                                <div class="featured-label" id="div_in_evidenza" runat="server">
                                                    <div class="featured-label-left">
                                                    </div>
                                                    <div class="featured-label-content">
                                                        <span class="fa fa-star"></span>
                                                    </div>
                                                    <div class="featured-label-right">
                                                    </div>
                                                    <div class="clearfix">
                                                    </div>
                                                </div>
                                                <div class="img" id="img_immagine" runat="server">
                                                </div>
                                                <div class="figCaption">
                                                    <div>
                                                        <asp:Literal ID="ltl_prezzo" runat="server"></asp:Literal></div>
                                                    <span>
                                                        <span class="icon-eye"></span>&nbsp;<asp:Literal ID="ltl_stat_view" runat="server"></asp:Literal>
                                                    </span> 
                                                    <span>
                                                        <span class="icon-heart"></span>&nbsp;<asp:Literal ID="ltl_stat_like" runat="server"></asp:Literal>
                                                    </span> 
                                                    <span>
                                                        <span class="icon-bubble"></span>&nbsp;<asp:Literal ID="ltl_stat_comment" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                                <div class="figView">
                                                    <span class="icon-eye"></span>
                                                </div>
                                                <div class="figType">
                                                    <asp:Literal ID="ltl_tipo_annuncio" runat="server"></asp:Literal></div>
                                            </div>
                                            <h2>
                                                <asp:Literal ID="ltl_annuncio" runat="server"></asp:Literal></h2>
                                            <div class="cardAddress">
                                                <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal>
                                            </div>
                                            <ul class="cardFeat">
                                                <li><span class="fa fa-moon-o"></span>
                                                    <asp:Literal ID="ltl_camere" runat="server"></asp:Literal></li>
                                                <li><span class="icon-drop"></span>
                                                    <asp:Literal ID="ltl_bagni" runat="server"></asp:Literal></li>
                                                <li><span class="icon-frame"></span>
                                                    <asp:Literal ID="ltl_superfice" runat="server"></asp:Literal></li>
                                            </ul>
                                            <div class="clearfix">
                                            </div>
                                        </asp:HyperLink>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="pull-left">
                        </div>
                        <div class="pull-right search_prop_calc">
                            <pager:MesysPager ID="pager1" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                                    OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="12" Visible="false" />
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
<script language="javascript" type="text/javascript">

    $(document).ready(function () {

        init_slider();
        init_buttons();
        advanced_status();
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

    });

    function endRequestHandler(sender, args) {
        init_slider();
        init_buttons();
        advanced_status();
    }

    function setRange(min, max, tipo) {
        PageMethods.SalvaDtoRange(min, max, tipo, SPMSuccess, SPMErrore);
    }

    function SPMSuccess() {
    }
    function SPMErrore() {
    }

    function init_slider() {

        var min_price = ($('#search_min_price').val() != '') ? $('#search_min_price').val() : 0;
        var max_price = ($('#search_max_price').val() != '') ? $('#search_max_price').val() : main_vars.max_price;

        $('.priceSlider').slider({
            range: true,
            min: 0,
            max: parseInt(main_vars.max_price),
            values: [parseInt(min_price), parseInt(max_price)],
            step: 100,
            slide: function (event, ui) {
                if (main_vars.currency_pos == 'before') {
                    $('.priceSlider .sliderTooltip .stLabel').html(
                    main_vars.currency + ' ' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") +
                    ' <span class="fa fa-arrows-h"></span> ' +
                    main_vars.currency + ' ' + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ")
                    );
                } else {
                    $('.priceSlider .sliderTooltip .stLabel').html(
                    ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.currency +
                    ' <span class="fa fa-arrows-h"></span> ' +
                    ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.currency
                    );
                }
                $('#search_min_price').val(ui.values[0]);
                $('#search_max_price').val(ui.values[1]);
                setRange(ui.values[0], ui.values[1],'P')
                var priceSliderRangeLeft = parseInt($('.priceSlider .ui-slider-range').css('left'));
                var priceSliderRangeWidth = $('.priceSlider .ui-slider-range').width();
                var priceSliderLeft = priceSliderRangeLeft + (priceSliderRangeWidth / 2) - ($('.priceSlider .sliderTooltip').width() / 2);
                $('.priceSlider .sliderTooltip').css('left', priceSliderLeft);
            }
        });

        if (main_vars.currency_pos == 'before') {
            $('.priceSlider .sliderTooltip .stLabel').html(
            main_vars.currency + ' ' + $('.priceSlider').slider('values', 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") +
            ' <span class="fa fa-arrows-h"></span> ' +
            main_vars.currency + ' ' + $('.priceSlider').slider('values', 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ")
        );
        } else {
            $('.priceSlider .sliderTooltip .stLabel').html(
            $('.priceSlider').slider('values', 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.currency +
            ' <span class="fa fa-arrows-h"></span> ' +
            $('.priceSlider').slider('values', 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.currency
        );
        }
        var priceSliderRangeLeft = parseInt($('.priceSlider .ui-slider-range').css('left'));
        var priceSliderRangeWidth = $('.priceSlider .ui-slider-range').width();
        var priceSliderLeft = priceSliderRangeLeft + (priceSliderRangeWidth / 2) - ($('.priceSlider .sliderTooltip').width() / 2);
        $('.priceSlider .sliderTooltip').css('left', priceSliderLeft);


        var min_area = ($('#search_min_area').val() != '') ? $('#search_min_area').val() : 0;
        var max_area = ($('#search_max_area').val() != '') ? $('#search_max_area').val() : main_vars.max_area;
        $('.areaSlider').slider({
            range: true,
            min: 0,
            max: parseInt(main_vars.max_area),
            values: [parseInt(min_area), parseInt(max_area)],
            step: 10,
            slide: function (event, ui) {
                $('.areaSlider .sliderTooltip .stLabel').html(
                    ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.unit +
                    ' <span class="fa fa-arrows-h"></span> ' +
                    ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.unit
                );
                $('#search_min_area').val(ui.values[0]);
                $('#search_max_area').val(ui.values[1]);
                setRange(ui.values[0], ui.values[1], 'S')
                var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range').css('left'));
                var areaSliderRangeWidth = $('.areaSlider .ui-slider-range').width();
                var areaSliderLeft = areaSliderRangeLeft + (areaSliderRangeWidth / 2) - ($('.areaSlider .sliderTooltip').width() / 2);
                $('.areaSlider .sliderTooltip').css('left', areaSliderLeft);
            }
            });
            $('.areaSlider .sliderTooltip .stLabel').html(
            $('.areaSlider').slider('values', 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.unit +
            ' <span class="fa fa-arrows-h"></span> ' +
            $('.areaSlider').slider('values', 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") + ' ' + main_vars.unit
        );
        var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range').css('left'));
        var areaSliderRangeWidth = $('.areaSlider .ui-slider-range').width();
        var areaSliderLeft = areaSliderRangeLeft + (areaSliderRangeWidth / 2) - ($('.areaSlider .sliderTooltip').width() / 2);
        $('.areaSlider .sliderTooltip').css('left', areaSliderLeft);
    }

    function init_buttons() {

        $('.handleFilter').click(function() {
            $('.filterForm').slideToggle(200);

            setTimeout(function() {
                    var priceSliderRangeLeft = parseInt($('.priceSlider .ui-slider-range').css('left'));
                    var priceSliderRangeWidth = $('.priceSlider .ui-slider-range').width();
                    var priceSliderLeft = priceSliderRangeLeft + ( priceSliderRangeWidth / 2 ) - ( $('.priceSlider .sliderTooltip').width() / 2 );
                    $('.priceSlider .sliderTooltip').css('left', priceSliderLeft);

                    var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range').css('left'));
                    var areaSliderRangeWidth = $('.areaSlider .ui-slider-range').width();
                    var areaSliderLeft = areaSliderRangeLeft + ( areaSliderRangeWidth / 2 ) - ( $('.areaSlider .sliderTooltip').width() / 2 );
                    $('.areaSlider .sliderTooltip').css('left', areaSliderLeft);
                }, 300);
        });

        $('#showAdvancedFilter').click(function() {
            $('#advancedFilter').slideDown(200);
            $('#hideAdvancedFilter').addClass('display');
            $(this).removeClass('display');
            PageMethods.SalvaAdvancedSearch("display", SPMSuccess, SPMErrore);
            setTimeout(function() {
                var priceSliderRangeLeft = parseInt($('.priceSlider .ui-slider-range').css('left'));
                var priceSliderRangeWidth = $('.priceSlider .ui-slider-range').width();
                var priceSliderLeft = priceSliderRangeLeft + ( priceSliderRangeWidth / 2 ) - ( $('.priceSlider .sliderTooltip').width() / 2 );
                $('.priceSlider .sliderTooltip').css('left', priceSliderLeft);

                var areaSliderRangeLeft = parseInt($('.areaSlider .ui-slider-range').css('left'));
                var areaSliderRangeWidth = $('.areaSlider .ui-slider-range').width();
                var areaSliderLeft = areaSliderRangeLeft + ( areaSliderRangeWidth / 2 ) - ( $('.areaSlider .sliderTooltip').width() / 2 );
                $('.areaSlider .sliderTooltip').css('left', areaSliderLeft);

                if (map) {
                    google.maps.event.trigger(map, 'resize');
                }

                if (appMap) {
                    google.maps.event.trigger(appMap, 'resize');
                }
            }, 300);
        });

        $('#hideAdvancedFilter').click(function() {
            $('#advancedFilter').slideUp(200);
            $('#showAdvancedFilter').addClass('display');
            $(this).removeClass('display');
            PageMethods.SalvaAdvancedSearch("", SPMSuccess, SPMErrore);
        });

    }

    function advanced_status() {
        PageMethods.GetAdvancedSearch(function (ret) {
            //alert(ret);
            if (ret == 'display') {
                $('#advancedFilter').slideDown(1);
                $('#hideAdvancedFilter').addClass('display');
                $('#showAdvancedFilter').removeClass('display');
            }
        }, SPMErrore);
    }

</script>
</asp:Content>
