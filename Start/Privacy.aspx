<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Privacy.aspx.vb" Inherits="Immobiliare_Web.Privacy" %>

<%@ Import Namespace="Immobiliare_Web" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Crimson+Text' rel='stylesheet'
        type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="category-header">
        <div class="row">
            <div class="container">
                <div class="category-title">
                    <h2>
                        Privacy</h2>
                </div>
                <!-- End .category-title -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .row -->
    </div>
    <div class="md-margin2x">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="et_pb_text_inner">
                        <h1>
                            Informativa sul trattamento dei dati personali</h1>
                        <p>
                            <em>Questa informativa è resa ai sensi del D.lgs. 196/2003 – (Codice Privacy) – e del
                                Regolamento UE 679/2016 (GDPR) e si applica esclusivamente ai dati raccolti attraverso
                                il sito
                                <%=ConfigurationManager.AppSettings("Web_Site")%>.</em></p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Titolare del trattamento</h2>
                        <p>
                            Meini immobiliare,
                            <%=Lingua.CaricaLingua("lgl_contatti_indirizzo")%><br />
                            Indirizzo mail:
                            cristiano@meini.it</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Finalità del trattamento</h2>
                        <p>
                            Scrivendo attraverso il form di contatto i suoi dati saranno usati per rispondere.
                            Stessa cosa scrivendo via posta elettronica o lasciando se possibile un commento
                            ad un post nel blog.<br />
                            Utilizziamo la newsletter per restare in contatto con le persone che decidono di
                            iscriversi. Inviamo circa una o due mail al mese in cui parliamo della nostra attività.
                            Qualche volta possiamo anche inviare promozioni, buoni sconto o lanci di nuovi servizi.<br />
                            Se vengono acquistati prodotti e/o servizi utilizziamo i suoi dati per contattarla
                            ed emettere fattura.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Tipologie di dati raccolti</h2>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Dati forniti volontariamente
                                dall’utente</span></h3>
                        <p>
                            I dati raccolti, in prima persona, su questo sito sono: nome ed indirizzo email.
                            Questi dati vengono volontariamente forniti da chi ci contatta, si iscrive alla
                            newsletter o acquista un servizio. Alcuni dati possono essere facoltativi.</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Dati di navigazione</span></h3>
                        <p>
                            I sistemi informatici e i software che fanno funzionare questo sito acquisiscono,
                            nel corso del loro normale funzionamento, alcuni dati personali la cui trasmissione
                            è implicita nell’uso dei protocolli di comunicazione di Internet.<br />
                            Questi dati non sono raccolti per essere associati ad interessati identificati,
                            ma per loro natura potrebbero permettere di identificare gli utenti, attraverso
                            elaborazioni ed associazioni con dati detenuti da terzi.<br />
                            In questa categoria di dati rientrano gli indirizzi IP o i nomi a dominio dei computer
                            utilizzati dagli utenti che si connettono al sito, i browser e i parametri del sistema
                            informatico utilizzato per connettersi al sito, i dati di navigazione, compreso
                            orario della richiesta e risposta ottenuta dal server.<br />
                            Questi dati sono utilizzati al solo fine di ricavare informazioni statistiche anonime
                            sull’uso del sito, per il miglioramento del servizio e per controllarne il corretto
                            funzionamento.</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Cookie</span></h3>
                        <p>
                            Il nostro sito – come tutti del resto – utilizza i cookies. Sono file di testo che
                            vengono depositati sul computer degli utenti per migliorare le funzionalità del
                            sito, per semplificare la navigazione automatizzando alcuni passaggie per analizzare
                            l’uso del sito.<br />
                            Utilizzando questo sito accetti che siano installati sul suo dispositivo i seguenti
                            cookies:</p>
                        <ul>
                            <li>cookies di sessione: non sono strumentali alla raccolta di dati personali con cui
                                identificare l’utente e durano per la sola sessione in corso, cioè fino alla chiusura
                                del browser. Il loro uso non richiede il suo consenso. Utilizzando il sito acconsenti
                                espressamente all’uso di questi cookie.</li><li>cookies analitici: sono utilizzati per
                                    raccogliere informazioni, in forma aggregata, sul numero degli visitatori e su come
                                    questi navigano questo sito. Il sito utilizza Google Analytics, <a href="https://policies.google.com/?hl=it"
                                        target="_blank" rel="noopener">qui puoi trovare la sua privacy e cookie policy</a>.</li><li>
                                            cookies di terze parti: servono per permettere la condivisione dei contenuti di
                                            questo sito su alcuni social network (Facebook, Pinteres, Twitter, Instagram). Se
                                            decidi di interagire con i plugin alcune informazioni personali potrebbero essere
                                            acquisite dai gestori delle piattaforme dei social network (per esempio, la visita
                                            al sito). Io non ho accesso ai dati che sono autonomamente raccolti e trattati dai
                                            gestori delle piattaforme dei social network.</li></ul>
                        <p>
                            E' libero di decidere quali cookie accettare e quali no grazie alla cookie bar presente
                            sul sito.<br />
                            Il rifiuto dei cookie impedirà di utilizzare alcuni servizi.</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Log di sistema e manutenzione</span></h3>
                        <p>
                            Per necessità legate al funzionamento ed alla manutenzione, il sito e gli eventuali
                            servizi terzi che utilizzo potrebbero raccogliere Log di sistema, ossia file che
                            registrano le interazioni e che possono contenere anche dati personali come l’indirizzo
                            IP degli utenti.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Modalità di trattamento</h2>
                        <p>
                            I dati raccolti sono trattati con strumenti informatici. Idonee misure di sicurezza
                            sono osservate per prevenire la perdita dei dati, usi illeciti o non corretti ed
                            accessi non autorizzati.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Base giuridica del trattamento</h2>
                        <p>
                            Trattiamo i suoi dati personali solo nel caso in cui:</p>
                        <ul>
                            <li>ha prestato il consenso per una o più finalità specifiche (es. ricevere la newsletter,
                                ricevere un preventivo, ecc…)</li><li>oppure il trattamento è necessario all’esecuzione
                                    di un contratto o all’esecuzione di misure precontrattuali.</li></ul>
                        <p>
                            Può, in qualsiasi momento, chiedere su quale base giuridica abbiamo trattato i suoi
                            dati.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Luogo del trattamento</h2>
                        <p>
                            I dati vengono trattati principalmente presso la nostra sede legale in
                            <%=Lingua.CaricaLingua("lgl_contatti_indirizzo")%>
                            oppure presso i&nbsp;luoghi
                            in cui saremo nel momento in cui accediamo al sito.<br />
                        </p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Periodo di conservazione dei dati</h2>
                        <p>
                            Trattiamo e conserviamo i dati personali per il tempo richiesto dalle finalità per
                            le quali sono stati raccolti.<br />
                            Se abbiamo ottenuto il suo consenso al trattamento dei dati, possiamo conservare
                            i dati fino a quando revocherà il consenso.<br />
                            Potremmo anche essere obbligati a conservare i dati personali per un periodo più
                            lungo in ottemperanza ad un obbligo di legge o per ordine di un’autorità.</p>
                        <p>
                            Al termine del periodo di conservazioni cancelleremo i dati raccolti e il diritto
                            di accesso, cancellazione, rettificazione e il diritto alla portabilità non potranno
                            più essere esercitati.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Dettagli sul trattamento dei dati personali</h2>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Modulo di contatto</span></h3>
                        <p>
                            Scrivendo attraverso un modulo di contatto, useremo i suoi dati per rispondere via
                            mail alla sua richiesta di informazioni o di preventivo. Per poter scrivere tramite
                            modulo di contatto è necessario accettare questa Informativa sul trattamento dei
                            dati personali. Senza questo consenso non potrà essere inviato nessun messaggio
                            dai moduli di contatto. I suoi dati restano memorizzati nell'archivio di posta elettronica
                            e nei backup.<br />
                            Chi accede a questi dati: all’indirizzo mail
                            cristiano@meini.it
                            accedono tutti gli addetti della
                            Meini immobiliare
                            che si occupano di amministrazione e rapporti con i clienti.<br />
                            <em>Dati personali raccolti: nome ed email.</em></p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Commenti al blog</span></h3>
                        <p>
                            Per poter commentare un post del blog deve essere inserito nome ed indirizzo email.
                            Per commentare deve essere accettata questa Informativa sul trattamento dei dati
                            personali. Senza questo consenso è possibile commentare. I suoi dati restano memorizzati
                            del database del sito, nell'archivio di posta elettronica e nei backup.<br />
                            Chi accede a questi dati: all’indirizzo mail
                            cristiano@meini.it
                            accedono tutti gli addetti della
                            Meini immobiliare
                            che si occupano di amministrazione e rapporti con i clienti.<br />
                            <em>Dati personali raccolti: nome ed email.</em></p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Newsletter</span></h3>
                        <p>
                            Con l'iscrizione alla newsletter, attraverso i form presenti sul sito, i popup o
                            attraverso landing page esterne ad esso, il suo nome e il suo indirizzo email vengono
                            automaticamente inseriti in una lista di contatti a cui sono inviate le newsletter,
                            che possono contenere anche informazioni commerciali e promozionali.<br />
                            Per iscriversi alla newsletter deve avere compiuto 16 anni.<br />
                            Riceviamo una mail con i suoi dati quando si iscrive o si cancella dalla newsletter.<br />
                            Chi accede a questi dati: alla newsletter accedono tutti gli addetti della
                            Meini immobiliare
                            che si occupano di amministrazione e rapporti con i clienti.<br />
                            <em>Dati personali raccolti: nome ed email.</em></p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Google Analytics</span></h3>
                        <p>
                            Per conoscere le statistiche relative al traffico sul sito usiamo Google Analytics;
                            abbiamo impostato Google Analytics in modo che il suo indirizzo IP venga anonimizzato.<br />
                            Le informazioni generate dal cookie di Google Analytics sull’utilizzo del sito web
                            da parte sua (compresa la prima parte del suo indirizzo IP) vengono quindi trasmesse
                            a Google e depositate presso i suoi server negli Stati Uniti. Google usa queste
                            informazioni per tracciare e esaminare l’uso del sito da parte dei visitatori, e
                            fornire questi dati, in forma aggregata e mai collegati alla sua identità, attraverso
                            i report di Analytics e i suoi altri servizi informativi.<br />
                            Google potrebbe trasferire queste informazioni a terzi nel caso in cui questo sia
                            imposto dalla legge o nel caso in cui si tratti di soggetti che trattano queste
                            informazioni per suo conto; per maggiori informazioni consulta <a href="https://policies.google.com/?hl=it"
                                target="_blank" rel="noopener">l’informativa su privacy e uso dei dati di Google
                                Analytics</a>.<br />
                            Guardiamo Analytics per capire meglio cosa piace ai nostri utenti e cosa non interessa,
                            e per migliorare i contenuti di questo sito.<br />
                            Se non vuole essere tracciato, neanche in forma anonima, da Google Analytics, può
                            negare il consenso dalla cookie bar del sito.<br />
                            Chi accede a questi dati: all’account Google Analytics accedono tutti gli addetti
                            della
                            Meini immobiliare
                            che si occupano di amministrazione e rapporti con i clienti.</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Facebook Pixel</span></h3>
                        <p>
                            Su questo sito potrebbe essere installato il pixel di Facebook. Usato principalmente&nbsp;per
                            tracciare i risultati delle campagne pubblicitarie attivate su Facebook. Possiamo
                            usarlo anche per mostrare a chi visita il sito o una pagina specifica di esso una
                            pubblicità mirata su Facebook. Tutto avviene attraverso i cookie e i suoi dati di
                            navigazione non vengono collegati alla sua identità e ai suoi dati personali. Questo
                            significa che&nbsp;Facebook mi mostra solo i dati in forma anonima. Non sappiamo
                            cosa ha fatto e non conosciamo il suo nome, cognome, indirizzo email, profilo Facebook.
                            Conosciamo solo quante persone hanno fatto qualcosa in un certo periodo di tempo.<br />
                            Chi accede a questi dati: all’account dalla pagina Facebook accedono tutti gli addetti
                            della
                            Meini immobiliare
                            che si occupano di amministrazione e rapporti con i clienti.</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Google Maps</span></h3>
                        <p>
                            In questo sito è incorporata Google Maps. Questo servizio di Google installa cookie
                            di profilazione e statistici. <a href="https://policies.google.com/privacy" target="_blank"
                                rel="noopener">Qui puo trovare le norme sulla Privacy di Google</a>.
                        </p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">YouTube</span></h3>
                        <p>
                            In alcune pagine del sito potrebbero essere inseriti dei video incorporati da YouTube,
                            il quale installa cookie di profilazione e statistici sul browser degli utenti.
                            <a href="https://policies.google.com/privacy" target="_blank" rel="noopener">Qui puo
                                trovare le norme sulla Privacy di Google</a>.
                        </p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Diritti degli interessati</h2>
                        <p>
                            Ogni utente ha il diritto di:</p>
                        <ul>
                            <li>Revocare il consenso in ogni momento.</li><li>Opporsi al trattamento dei propri
                                dati.</li><li>Accedere ai propri dati.</li><li>Verificare i propri dati e chiedere l’aggiornamento
                                    o la correzione.</li><li>Ottenere la limitazione del trattamento.</li><li>Ottenere la
                                        cancellazione o rimozione dei propri dati.</li><li>Chiedere la portabilità dei propri
                                            dati.</li><li>Presentare reclamo all’Autorità di controllo.</li></ul>
                        <p>
                            I soggetti cui si riferiscono i dati personali hanno il diritto in qualunque momento
                            di ottenere la conferma dell’esistenza o meno dei medesimi dati e di conoscerne
                            il contenuto e l’origine, verificarne l’esattezza o chiederne l’integrazione o l’aggiornamento,
                            oppure la rettificazione (articolo 7 del Codice in materia di protezione dei dati
                            personali). Ai sensi del medesimo articolo si ha il diritto di chiedere la cancellazione,
                            la trasformazione in forma anonima o il blocco dei dati trattati in violazione di
                            legge, nonché di opporsi in ogni caso, per motivi legittimi, al loro trattamento.
                            Le richieste vanno rivolte all’indirizzo:
                            cristiano@meini.it</p>
                        <h3 style="text-align: left;">
                            <span style="font-size: 20px!Important; color: #717171;">Come esercitare i diritti</span></h3>
                        <p>
                            Per esercitare i suoi diritti puoi contattarci a
                            cristiano@meini.it. Riceverai una risposta entro 30 giorni.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Informazioni non contenute in questa informativa</h2>
                        <p>
                            Puoi richiedere, in qualunque momento, ulteriori informazioni in relazione al trattamento
                            dei dati personali contattandomi via mail.</p>
                        <h2 style="font-size: 25px; text-align: left;">
                            Modifiche a questa privacy policy</h2>
                        <p>
                            Ci riserviamo il diritto di apportare modifiche alla presente Informativa sul trattamento
                            dei dati personali in qualunque momento. Puo consultare regolarmente questa pagina,
                            facendo riferimento alla data di ultima modifica indicata qui sotto.</p>
                        <p>
                            <em>Data di ultima modifica: 22 maggio 2018</em></p>
                    </div>
                    <!-- Error Page Form /-->
                </div>
            </div>
            <!-- End .col-md-12 -->
        </div>
        <!-- End.row -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
