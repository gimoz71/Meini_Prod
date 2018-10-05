<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Index.aspx.vb" Inherits="Immobiliare_Web.Index" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="slider wow fadeIn" data-wow-delay="0.2s">
        <img src="/assets/images/slider_home.jpg">
    </div>
    <nav class="navbar navbar-inverse search wow fadeIn" data-wow-delay="0.2s">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#searchbar" aria-expanded="false"
                    aria-controls="navbar">
                    <span class="sr-only">Search</span>
                    <span>Search</span>
                </button>
                <!--<a class="navbar-brand" href="#">Project name</a>-->
            </div>
            <div id="searchbar" class="collapse navbar-collapse">
                <p class="navbar-text">Cerca un immobile:</p>
                <div class="navbar-form " role="search">
                    <div class="form-group">
                        <asp:TextBox id="txt_codice" runat="server" CssClass="form-control" Placeholder="Riferimento"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList id="ddl_tab_comune_cod" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList id="ddl_tab_categoria_cod" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList id="ddl_importo" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList id="ddl_superficie" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:LinkButton ID="btn_cerca" runat="server" Cssclass="btn btn-default">
                        <%=Lingua.CaricaLingua("lgl_ricerca_cerca")%>
                    </asp:LinkButton>
                </div>
            </div>
            <!--/.nav-collapse -->
        </nav>
    <div class="content">
        <div class="row">
            <div class="col-md-12 wow fadeInUpSmall" data-wow-delay="0.5s">
                <h2>
                    L’agenzia</h2>
                <p>
                    Operiamo in Toscana nelle provincie di Pisa e Livorno e concentriamo la nostra attività
                    sulla vendita di casolari, ville e aziende agricole. Il titolare, Cristiano Meini,
                    si è laureato nel 1996 presso l’università di Pisa con tesi sul diritto di prelazione
                    agraria.</p>
                <h2>
                    Servizi all’acquirente</h2>
                <ul>
                    <li>Visita agli immobili e consegna di materiale illustrativo
                        <li>Accertamenti urbanistici, catastali e ipotecari</li>
                        <li>Assistenza nella trattativa nella trattativa</li>
                        <li>Assistenza nella trattativa per l'eventuale accensione di un mutuo</li>
                        <li>Proposta di acquisto e/o contratto preliminare e relativa registrazione ai sensi
                            di Legge</li>
                        <li>Coordinamento dei professionisti che dovessero partecipare al buon esito della compravendita
                            (avvocati, tecnici, notai)</li>
                        <li>Consegna al notaio di tutti i documenti necessari per la stipula del rogito</li>
                        <li>Presenza al rogito notarile</li>
                        <li>Servizi post-vendita su richiesta</li>
                </ul>
                <h2>
                    Servizi al venditore</h2>
                <ul>
                    <li>Servizio fotografico, analisi dei documenti e stima del valore dell'immobile</li>
                    <li>Sottoscrizione dell’incarico di vendita in esclusiva o non in esclusiva (a discrezione
                        del venditore)</li>
                    <li>Promozione dell'immobile su riviste del settore, portali web e piattaforme MLS</li>
                    <li>Visite all'immobile con personale che parla la lingua inglese</li>
                    <li>Proposta di acquisto e/o contratto preliminare e relativa registrazione ai sensi
                        di Legge</li>
                    <li>Coordinamento dei professionisti che dovessero partecipare al buon esito della compravendita
                        (avvocati, tecnici, notai)</li>
                    <li>Consegna al notaio di tutti i documenti necessari per la stipula del rogito</li>
                    <li>Presenza al rogito notarile</li>
                    <li>Servizi post-vendita su richiesta</li>
                </ul>
                <p>
                    In caso di incarico di vendita in esclusiva garantiamo un servizio fotografico aereo
                    realizzato con drone e la promozione dell’immobile su tutti i nostri canali pubblicitari,
                    inclusi la rivista “VILLE &amp; CASALI” ed i portali internazionali LUXURYESTATE
                    e HOUSE24</p>
            </div>
        </div>
        <div class="masonry row">
            <div class="item wow fadeInUpSmall" data-wow-delay="0.1s">
                <div class="well">
                    <img src="/assets/images/mlsfiaip.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.2s">
                <div class="well">
                    <img src="/assets/images/luxuryestate.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.3s">
                <div class="well">
                    <img src="/assets/images/casait.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.4s">
                <div class="well">
                    <img src="/assets/images/idealistait.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.5s">
                <div class="well">
                    <img src="/assets/images/house.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.6s">
                <div class="well">
                    <img src="/assets/images/immobiliareit.jpg"></div>
            </div>
            <div class="item wow fadeInUpSmall" data-wow-delay="0.7s">
                <div class="well">
                    <img src="/assets/images/villecasali.jpg"></div>
            </div>
        </div>
    </div>
</asp:Content>
