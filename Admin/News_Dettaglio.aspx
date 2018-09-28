<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="News_Dettaglio.aspx.vb" Inherits="Immobiliare_Web.News_Dettaglio" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="../Controls/rTextData.ascx" TagName="rTextData" TagPrefix="cc" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
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
                <div class="box-body" id="div_news" runat="server">
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
                    <div class="tab-content">
                        <asp:Repeater ID="rpt_lingue_tabs" runat="server">
                            <ItemTemplate>
                                <asp:Literal ID="ltl_lingua" runat="server" Visible="false"></asp:Literal>
                                <div class="tab-pane" id="li_tab_a" runat="server">
                                    <cc:rtextbox id="txt_titolo" runat="server" maxlength="128" autopostback="false"
                                        label="Inserimento titolo" icon="" required="true" required_help="Campo Obbligatorio" />
                                    <cc:rtextbox id="txt_abstract" runat="server" maxlength="128" autopostback="false"
                                        label="Sottotitolo" icon="" />
                                    <cc:rtextbox id="txt_descrizione" runat="server" autopostback="false" label="Testo news"
                                        icon="" textmode="MultiLine" rows="5" required="true" required_help="Campo Obbligatorio" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <cc:rTextData ID="txt_news_data" runat="server" Label="Data news" Required="true" Required_Help="Campo Obbligatorio" />
                    <cc:rdropdown id="ddl_tab_news_argomento_key" runat="server" autopostback="false" label="Argomento"
                        placeholder="Seleziona..." />
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Immagine</label>
                        <div class="col-sm-10">
                            <asp:Image ID="img_immagine" runat="server" CssClass="image-responsive" Style="max-width: 150px;" />
                        </div>
                    </div>
                    <div style="height: 20px;">
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Carica nuova immagine (1920x1080)</label>
                        <div class="col-sm-10">
                            <telerik:RadAsyncUpload runat="server" ID="img_upload" MultipleFileSelection="Disabled" MaxFileInputsCount="1"
                                Culture="it-IT" DropZones="#DropImage1" AllowedFileExtensions="jpg,png,jpeg,gif"
                                Localization-Select="Seleziona" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">
                            Pubblicata</label>
                        <div class="col-sm-10">
                            <label>
                                <asp:CheckBox ID="chk_attiva" runat="server" />
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        </label>
                    <div class="col-sm-10">
                        <asp:Literal ID="ltl_ultima_modifica" runat="server"></asp:Literal>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        </label>
                    <div class="col-sm-10">
                        <asp:LinkButton ID="btn_cancella" runat="server" CssClass="btn btn-danger"  style="margin-left:10px;">
                                    Cancella
                        </asp:LinkButton>
                        <asp:LinkButton ID="btn_salva" runat="server" CssClass="btn btn-green pull-left">
                                    Salva
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
