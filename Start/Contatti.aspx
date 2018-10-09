<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Contatti.aspx.vb" Inherits="Immobiliare_Web.Contatti" MaintainScrollPositionOnPostback="true" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<%@ Register src="../Immobili/Immobili_Right.ascx" tagname="Immobili_Right" tagprefix="imm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-8 wow fadeInUpSmall" data-wow-delay="0s">
                    <img class="thumb-item" src="/assets/images/cartina.jpg">
                </div>
                <div class="col-md-4 wow fadeInUpSmall" data-wow-delay="0.3s">
                    <h3 class="item">
                        Contatti</h3>
                    <ul class="info top-buffer">
                        <li><span>Telefono:</span>+39 0586 699310</li>
                        <li><span>Fax:</span>+39 0586 699310</li>
                        <li><span>Cellulare:</span>+39 335 386743</li>
                        <li><span>E-mail:</span>cristiano@meini.it</li>
                        <li><span>PEC:</span>cristiano@pec.meini.it</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h4>
                        <%=Lingua.CaricaLingua("lgl_contatti_invia_messaggio")%></h4>
                    <div class="contactPageForm">
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
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="cp_response">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for="cp_name">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_nome")%><span class="text-red">*</span></label>
                                    <asp:TextBox ID="txt_nome" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <label for="cp_email">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_mail")%><span class="text-red">*</span></label>
                                    <asp:TextBox ID="txt_email" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="cp_subject">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_soggetto")%><span class="text-red">*</span></label>
                                    <asp:TextBox ID="txt_oggetto" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="cp_message">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_messaggio")%><span class="text-red">*</span></label>
                                    <asp:TextBox ID="txt_messaggio" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <label for="cp_message">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_privacy_01")%>
                                        <b><a href="/Start/Privacy.aspx">
                                            <%=Lingua.CaricaLingua("lgl_contatti_msg_privacy_02")%></a><span class="text-red">*</span>&nbsp;&nbsp;&nbsp;</b>
                                    </label>
                                    <asp:CheckBox ID="chk_privacy" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-group">
                                    <asp:LinkButton ID="btn_invia" runat="server" CssClass="btn btn-danger">
                                        <%=Lingua.CaricaLingua("lgl_contatti_msg_invia")%>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
