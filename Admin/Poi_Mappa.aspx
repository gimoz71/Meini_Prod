<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Poi_Mappa.aspx.vb" Inherits="Immobiliare_Web.Poi_Mappa" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rTextNumero.ascx" TagName="rTextNumero" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                        <li id="li_tab_4" runat="server"><a href="#<%=tab_4.ClientId%>" data-toggle="tab" onclick="$('#iMappa').attr('src', '../Mappe/MappaRicerca.aspx');">Mappa</a></li>
                        <li class=""><a href="Poi_Lista.aspx">Torna alla lista</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- Tabs 1-->
                        <div class="tab-pane active" id="tab_1" runat="server">
                            <div class="box-body" id="div_poi" runat="server">
                                <div style="height: 10px;">
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rDropDown ID="ddl_poi_type_key" runat="server" AutoPostBack="false" Form_Vertical="true"
                                            Label="Tipologia poi" Placeholder="Seleziona..." Required="true" Required_Help="Campo Obbligatorio" />
                                    </div> 
                                </div>
                                <div class="col-sm-6">
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextBox ID="txt_indirizzo" runat="server" MaxLength="256" AutoPostBack="false" Label="Indirizzo completo" Form_Vertical="true"
                                            Icon="" Required="true" Required_Help="Campo Obbligatorio" />
                                    </div> 
                                </div>
                                <div class="col-sm-6"> 
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_coordinata_x" runat="server" Label="Coordinata X" Form_Vertical="true"
                                            CifreDecimali="10" />
                                    </div>
                                </div>
                                <div class="col-sm-6" >
                                    <div style="margin-left:10px; margin-right:10px;">
                                        <cc:rTextNumero ID="txt_coordinata_y" runat="server" Label="Coordinata Y" Form_Vertical="true"
                                            CifreDecimali="10" />
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
            PageMethods.SalvaCoordinatePoi(lat, lon, SPMSuccess, PMFailure);
        }

        function SPMSuccess() {
            javascript: __doPostBack('<%=btn_position.UniqueID%>', '');
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
