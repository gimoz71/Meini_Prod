<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Ricerca.aspx.vb" Inherits="Immobiliare_Web.Ricerca" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register Src="../Controls/rULDropDown.ascx" TagName="rULDropDown" TagPrefix="cc" %>
<%@ Register Namespace="ASPnetControls" Assembly="ASPnetMesysPager" TagPrefix="pager" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content">
        <div class="container">
            <div class="col-lg-12">
                <h3>
                    <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>&nbsp;<asp:Literal ID="ltl_ricerca_per"
                        runat="server"></asp:Literal></h3>
                <br />
                <div class="row">
                    <div style="text-align: center; width: 100%;" id="div_nessun_risultato" runat="server">
                        <h2>
                            <%=Lingua.CaricaLingua("lgl_ricerca_nessun_risultato")%></h2>
                    </div>
                    <asp:Repeater ID="rpt_immobili" runat="server">
                        <ItemTemplate>
                            <div class="row bottom-buffer wow fadeIn" data-wow-delay="0s">
                                <asp:HyperLink ID="lnk_immobile" runat="server" CommandName="GO" CssClass="card">
                                    <div class="col-md-4">
                                        <img class="thumb-item" id="img_immagine" runat="server">
                                    </div>
                                    <div class="col-md-8">
                                        <h3 class="immobile">
                                            <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal></h3>
                                        <div class="col-md-6">
                                            <h5 class="tipologia">
                                                <asp:Literal ID="ltl_annuncio" runat="server"></asp:Literal></h5>
                                            <ul class="info">
                                                <li><span>Riferimento:</span><asp:Literal ID="ltl_riferimento" runat="server"></asp:Literal></li>
                                                <li><span>Tipo annuncio:</span><asp:Literal ID="ltl_tipo_annuncio" runat="server"></asp:Literal></li>
                                                <li><span>Classe en:</span>F</li>
                                            </ul>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="prezzo">
                                                Prezzo: &euro;: <asp:Literal ID="ltl_prezzo" runat="server"></asp:Literal></h5>
                                            <ul class="info">
                                                <li><span>Abitazione:</span><asp:Literal ID="ltl_superfice" runat="server"></asp:Literal></li>
                                                <li><span>Camere:</span><asp:Literal ID="ltl_camere" runat="server"></asp:Literal></li>
                                                <li><span>Terreno:</span><asp:Literal ID="ltl_bagni" runat="server"></asp:Literal></li>
                                            </ul>
                                        </div>
                                    </div>
                                </asp:HyperLink>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="pull-right search_prop_calc">
                    <pager:MesysPager ID="pager1" runat="server" OnCommand="pager_Command" PageClause="Pagina"
                        OfClause="di" GenerateGoToSection="false" GenerateToolTips="false" PageSize="12"
                        Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script language="javascript" type="text/javascript">

        PageMethods.set_path("/Immobili/Ricerca.aspx");

        $(document).ready(function () {

            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequestHandler);

        });

        function endRequestHandler(sender, args) {

        }

    </script>
</asp:Content>
