<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Generatore_Lingue.aspx.vb" Inherits="Immobiliare_Web.Generatore_Lingue" 
    MaintainScrollPositionOnPostback="false" ValidateRequest="false" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row row_padding_top">
        <div class="col-md-12">
            <div class="col-md-12">
                <h3 class="box-title">
                    Gestione Lingue</h3>
                <br />
                <div class="box box-info" id="div_news" runat="server">
                    <div class="alert alert-success alert-dismissable" id="div_message_ok" runat="server"
                        visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            x
                        </button>
                        <i class="fa-lg fa fa-success"></i><strong>&nbsp;</strong>
                        <asp:Literal ID="ltl_messaggio_ok" runat="server"></asp:Literal>
                    </div>
                    <div class="alert alert-danger alert-dismissable" id="div_message_ko" runat="server"
                        visible="false">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            x
                        </button>
                        <i class="fa-lg fa fa-warning"></i><strong>Attenzione!</strong>
                        <asp:Literal ID="ltl_messaggio_ko" runat="server"></asp:Literal>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="form-horizontal">
                        <div class="box-body">
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
                                            <asp:Repeater ID="rpt_chiavi" runat="server" OnItemDataBound="rpt_chiavi_itemdatabound">
                                                <ItemTemplate>
                                                    <div class="col-lg-4">
                                                        <asp:Label ID="lbl_name" runat="server" Visible="false"></asp:Label>
                                                        <cc:rtextbox id="txt_valore" runat="server" autopostback="false" label="" icon=""
                                                            textmode="MultiLine" rows="1" form_vertical="true" />
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <asp:Literal ID="ltl_ultima_modifica" runat="server"></asp:Literal>
                        </div>
                        <div class="row">
                        </div>
                        <div class="col-md-12" style="margin-bottom: 0px;">
                            <asp:LinkButton ID="btn_compila" runat="server" CssClass="btn btn-danger">
                                        Compila
                            </asp:LinkButton>
                            <asp:LinkButton ID="btn_salva" runat="server" CssClass="btn btn-green">
                                        Salva
                            </asp:LinkButton>
                            <asp:LinkButton ID="btn_login" runat="server" CssClass="btn btn-green">
                                        Log In
                            </asp:LinkButton>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
