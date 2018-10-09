<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Immobile_Dettaglio.aspx.vb" Inherits="Immobiliare_Web.Immobile_Dettaglio" ValidateRequest="false" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="../Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="../Controls/rTextNumero.ascx" TagName="rTextNumero" TagPrefix="cc" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Assets/plugins/select2/select2.css"/>
    <link rel="stylesheet" href="/Assets/plugins/select2/select2_jazz.css"/>
    <script type="text/javascript" src="/Assets/plugins/select2/select2.min.js"></script>
    <script type="text/javascript" src="/Assets/plugins/select2/select2_locale_it.js"></script>
    <script type="text/javascript">
        var selectedItems;

        function setMultipleSelect(val) {
            selectedItems = val.split(',');
        }

        function Init_Select2() {
            if ($().select2) {
                $('select.select2me').select2({
                    placeholder: "Select",
                    allowClear: true
                });
            }
        }

        function Init_MultipleSelect2() {
            if ($().select2) {
                $('select[multiple="multiple"]').each(function () {
                    $('.select2-search-choice').remove();
                    $(this).on("change", function (e) {
                        PageMethods.SalvaSelect2MultipleValues(e.val, PMSuccess, PMFailure);
                    })
                });
            }
        }

        $(document).ready(function () {
            Init_Select2();
            Init_MultipleSelect2();
            $('#ddl_immobile_tag').select2('val', selectedItems);
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                    visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        x
                    </button>
                    <i class="fa-lg fa fa-warning"></i>&nbsp;<strong>Attenzione!</strong>&nbsp;
                    <asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
                </div>
                <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
                    visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        x
                    </button>
                    <i class="fa-lg fa fa-info"></i><strong>&nbsp;</strong>&nbsp;
                    <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal>
                </div>

                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active" id="li_tab_1" runat="server"><a href="#<%=tab_1.ClientId%>" data-toggle="tab">Generali</a></li>
                        <li id="li_tab_2" runat="server"><a href="#<%=tab_2.ClientId%>" data-toggle="tab">Immagini</a></li>
                        <li id="li_tab_3" runat="server"><a href="#<%=tab_3.ClientId%>" data-toggle="tab">Accessori</a></li>
                        <li id="li_tab_5" runat="server"><a href="#<%=tab_5.ClientId%>" data-toggle="tab">Tag</a></li>
                        <li id="li_tab_4" runat="server"><a href="#<%=tab_4.ClientId%>" data-toggle="tab" onclick="$('#iMappa').attr('src', '../Mappe/MappaRicerca.aspx');">Mappa</a></li>
                        <li id="li_tab_6" runat="server"><a href="Immobili_Lista.aspx">Torna alla lista</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- Tabs 1-->
                        <div class="tab-pane active" id="tab_1" runat="server">
                            <div class="box-body" id="div_immobile" runat="server">
                                <br />
                                <ul class="nav nav-tabs">
                                    <asp:Repeater ID="rpt_lingue_header" runat="server">
                                        <ItemTemplate>
                                            <li class="" id="li_tab_header" runat="server"><a href="#tab_1-1" data-toggle="tab"
                                                aria-expanded="true" id="li_tab_a" runat="server">
                                                <asp:Literal ID="ltl_lingua" runat="server"></asp:Literal>
                                            </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <div style="height: 10px;">
                                </div>
                                <div class="tab-content" style="margin-left:20px; margin-right:20px;">
                                    <asp:Repeater ID="rpt_lingue_tabs" runat="server">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl_lingua" runat="server" Visible="false"></asp:Literal>
                                            <div class="tab-pane" id="li_tab_a" runat="server">
                                                <cc:rTextBox ID="txt_titolo" runat="server" MaxLength="128" AutoPostBack="false" Form_Vertical="true"
                                                    Label="Inserimento titolo" Icon="" Required="true" Required_Help="Campo Obbligatorio" />
                                                <cc:rTextBox ID="txt_descrizione" runat="server" AutoPostBack="false" Label="Testo annuncio" Form_Vertical="true"
                                                    Icon="" TextMode="MultiLine" Rows="10" Required="true" Required_Help="Campo Obbligatorio" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextData ID="txt_data_annuncio" runat="server" Label="Data annuncio" Required="true" Form_Vertical="true"
                                            Required_Help="Campo Obbligatorio" />
                                    </div>
                                </div>
                                <div class="col-sm-6" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_codice_riferimento" runat="server" AutoPostBack="false" Label="Codice riferimento" Form_Vertical="true"
                                            Icon="" Required="true" Required_Help="Campo Obbligatorio" />
                                    </div>
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rDropDown ID="ddl_tab_tipo_annuncio_cod" runat="server" AutoPostBack="false" Form_Vertical="true"
                                            Label="Tipologia annuncio" Placeholder="Seleziona..." Required="true" Required_Help="Campo Obbligatorio" />
                                    </div> 
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rDropDown ID="ddl_tab_categoria_cod" runat="server" AutoPostBack="false" Form_Vertical="true"
                                            Label="Categoria annuncio" Placeholder="Seleziona..." Required="true" Required_Help="Campo Obbligatorio" />
                                    </div> 
                                </div>
                                <div class="col-sm-12">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_indirizzo" runat="server" MaxLength="128" AutoPostBack="false" Label="Indirizzo" Form_Vertical="true"
                                            Icon="" />
                                    </div> 
                                </div>
                                <asp:UpdatePanel ID="upd_citta" runat="server">
                                    <ContentTemplate>
                                        <div class="col-sm-6"> 
                                            <div style="margin-left:10px; margin-right:10px;">
                                                <cc:rDropDown ID="ddl_tab_provincia_cod" runat="server" AutoPostBack="true"  Form_Vertical="true"
                                                    Label="Provincia" Placeholder="Seleziona..." Required="true" Required_Help="Campo Obbligatorio" />
                                            </div> 
                                        </div>
                                        <div class="col-sm-6"> 
                                            <div style="margin-left:10px; margin-right:10px;">
                                                <cc:rDropDown ID="ddl_tab_comune_cod" runat="server" AutoPostBack="false" Form_Vertical="true"
                                                    Label="Citta" Placeholder="Seleziona..." Required="true" Required_Help="Campo Obbligatorio" />
                                            </div> 
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_localita" runat="server" MaxLength="128" AutoPostBack="false" 
                                            Label="Località" Form_Vertical="true" Icon="" />
                                    </div> 
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_ubicazione" runat="server" MaxLength="128" AutoPostBack="false" 
                                            Label="Ubicazione" Form_Vertical="true" Icon="" />
                                    </div> 
                                </div>
                                <div class="col-sm-12"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_richiesta" runat="server" Label="Richiesta" CifreDecimali="2" Required="true" Form_Vertical="true"
                                            Required_Help="Campo Obbligatorio" />
                                    </div> 
                                </div> 
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Trattativa riservata</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_trattativa_riservata" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Pubblicato</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_pubblicata" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Venduto</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_venduta" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            In evidenza</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_in_evidenza" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Storia del mese</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_in_home" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Evidenza Home</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_in_home_evidenza" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Pregio Home</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_in_home_pregio" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            In Esclusiva</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_in_home_esclusiva" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <asp:Literal ID="ltl_ultima_modifica" runat="server"></asp:Literal>
                                    </div> 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <asp:LinkButton ID="btn_cancella" runat="server" CssClass="btn btn-danger" Style="margin-left: 10px;">
                                        Cancella
                                        </asp:LinkButton>
                                        <asp:LinkButton ID="btn_salva" runat="server" CssClass="btn btn-green pull-left">
                                        Salva
                                        </asp:LinkButton>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_2" runat="server">
                            <div class="form-group">
                                <h3 style="margin-left:20px; margin-right:10px;">Immagini principali</h3>
                                <div class="col-sm-12">
                                    <asp:Repeater ID="rpt_immagini" runat="server" OnItemCommand="rpt_immagini_ItemCommand" OnItemDataBound="rpt_immagini_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-4" style="padding-bottom:10px;">
                                                <div class="col-sm-8">
                                                    <asp:Image ID="img_immagine" runat="server" CssClass="image-responsive" style="max-width:200px;" />
                                                </div> 
                                                <div class="col-sm-4">
                                                    <label for="chk_principale" class="col-sm-8 control-label">
                                                        Principale</label>
                                                    <div class="col-sm-2" style="margin-top:5px;">
                                                        <asp:CheckBox ID="chk_principale" runat="server" AutoPostBack="true" OnCheckedChanged="chk_principale_CheckedChanged" />
                                                    </div>
                                                    <br />
                                                    <div class="col-sm-12" style="margin-top:5px; text-align:left;">
                                                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="DEL">
                                                            <i class="fa fa-trash-o red" aria-hidden="true"></i>
                                                        </asp:LinkButton>
                                                    </div> 
                                                </div> 
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div style="height: 20px;">
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Carica immagini (800x480)</label>
                                <div class="col-sm-10">
                                    <telerik:RadAsyncUpload runat="server" ID="img_upload" MultipleFileSelection="Automatic"
                                        Culture="it-IT" DropZones="#DropImage1" AllowedFileExtensions="jpg,png,jpeg,gif"
                                        Localization-Select="Seleziona" />
                                </div>
                            </div>
                            <div class="form-group">
                                <h3 style="margin-left:20px; margin-right:10px;">Planimetrie</h3>
                                <div class="col-sm-12">
                                    <asp:Repeater ID="rpt_planimetrie" runat="server" OnItemCommand="rpt_immagini_ItemCommand" OnItemDataBound="rpt_immagini_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-4" style="padding-bottom:10px;">
                                                <div class="col-sm-10">
                                                    <asp:Image ID="img_immagine" runat="server" CssClass="image-responsive" style="max-width:200px;" />
                                                </div> 
                                                <div class="col-sm-2">
                                                    <asp:LinkButton ID="btnDelete" runat="server" CommandName="DEL">
                                                        <i class="fa fa-trash-o red" aria-hidden="true"></i>
                                                    </asp:LinkButton>
                                                </div> 
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div style="height: 20px;">
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Carica planimetrie</label>
                                <div class="col-sm-10">
                                    <telerik:RadAsyncUpload runat="server" ID="pla_upload" MultipleFileSelection="Automatic"
                                        Culture="it-IT" DropZones="#DropImage1" AllowedFileExtensions="jpg,png,jpeg,gif"
                                        Localization-Select="Seleziona" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <asp:LinkButton ID="btn_salva_immagini" runat="server" CssClass="btn btn-green pull-left">
                                        Carica immagini
                                        </asp:LinkButton>
                                    </div> 
                                </div>
                            </div>
                        </div> 
                        <div class="tab-pane" id="tab_3" runat="server">
                            <div class="box-body" id="div_accessori" runat="server">
                                <br />
                                <div class="col-sm-4"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_superficie" runat="server" Label="Superficie" Form_Vertical="true"
                                            CifreDecimali="2" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_locali" runat="server" Label="Locali" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_bagni" runat="server" Label="Bagni" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_camere" runat="server" Label="Camere" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_parcheggi" runat="server" Label="Posti auto" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_unita" runat="server" Label="Unità totali" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_coordinata_x" runat="server" Label="Coordinata X" Form_Vertical="true"
                                            CifreDecimali="10" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_coordinata_y" runat="server" Label="Coordinata Y" Form_Vertical="true"
                                            CifreDecimali="10" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_anno_costruzione" runat="server" Label="Anno costruzione" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_distanza_mare" runat="server" Label="Distanza dal mare" Form_Vertical="true"
                                            CifreDecimali="0" />
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_classe_energetica" runat="server" MaxLength="16" AutoPostBack="false" Label="Classe energetica" Form_Vertical="true"
                                            Icon="" />
                                    </div> 
                                </div>
                                <div class="col-sm-4">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_riscaldamento" runat="server" MaxLength="16" AutoPostBack="false" Label="Riscaldamento" Form_Vertical="true"
                                            Icon="" />
                                    </div> 
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Immobile di prestigio</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_prestigio" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group" style="margin-top:20px;">
                                        <label for="inputEmail3" class="col-sm-8 control-label">
                                            Vista mare</label>
                                        <div class="col-sm-4" style="margin-top:5px;">
                                            <asp:CheckBox ID="chk_vista_mare" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    &nbsp;
                                </div> 
                                <br />
                                <asp:Repeater ID="rpt_accessorio" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-6">
                                            <div class="col-sm-4" style="margin-top:8px;">
                                                <label><asp:Literal ID="ltl_tab_accessori_desc" runat="server"></asp:Literal></label>
                                            </div> 
                                            <div class="col-sm-1" style="margin-top:8px;">
                                                <asp:CheckBox ID="chk_tab_accessori_cod" runat="server" />
                                            </div> 
                                            <div class="col-sm-7">
                                                <asp:TextBox ID="txt_note_accessorio" runat="server" MaxLength="70" CssClass="form-control"
                                                    Form_Vertical="true" />
                                            </div> 
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div style="margin-left:10px; margin-right:10px;">
                                            <asp:LinkButton ID="btn_salva_accessori" runat="server" CssClass="btn btn-green pull-left">
                                            Salva accessori
                                            </asp:LinkButton>
                                        </div> 
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="tab-pane" id="tab_4" runat="server">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div style="margin-left: 0px!Important; margin-right: 0px!Important;">
                                        <div class="col-lg-12">
                                            <iframe id="iMappa" frameborder="0" width="100%" height="730" src=""></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-9">
                                    <div style="margin-left: 20px!Important;">
                                        <asp:TextBox ID="txt_google_address" runat="server" MaxLength="256" AutoPostBack="false" 
                                        CssClass="form-control" placeholder="Inserisci l'indirizzo per la ricerca su Google Maps"/>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div style="margin-right: 20px!Important; text-align:right;">
                                        <asp:LinkButton ID="btn_google_address" runat="server" ToolTip="" CssClass="btn btn-default"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Ricalcola coordinate</asp:LinkButton>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_5" runat="server">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div style="margin-left: 0px!Important; margin-right: 0px!Important; margin-top:20px;">
                                        <div class="col-lg-12">
                                            <label for="to" class="">
                                                Caricamento TAG</label>
                                            <select ID="ddl_immobile_tag" multiple="multiple" class="select2me form-control"
                                                placeholder="Scegli i tag da associare q questo immobile.">
                                                <%=option_tag%>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div style="margin-left:10px; margin-right:10px; margin-top:20px;">
                                            <asp:LinkButton ID="btn_salva_tag" runat="server" CssClass="btn btn-green pull-left">
                                            Salva tag
                                            </asp:LinkButton>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> 
                </div> 
            </div>
        </div>
    </div>

    <!-- /row -->
    <asp:LinkButton ID="btn_position" runat="server" style="display:none;" />
    <!-- /row -->
    <script type="text/javascript">
        function setPosition(lat, lon) {
            $('#<%=txt_coordinata_x.txt_Client_Id%>').val(lat);
            $('#<%=txt_coordinata_y.txt_Client_Id%>').val(lon);
            PageMethods.SalvaCoordinateImmobile(lat, lon, SPMSuccess, PMFailure);
        }

        function SPMSuccess() {
            javascript: __doPostBack('<%=btn_position.UniqueID%>', '');
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
