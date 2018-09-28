ct_$('html').ultimateGDPR({
    popup_style: {
        position: 'bottom-panel', // bottom-left, bottom-right, bottom-panel, top-left, top-right, top-panel
        distance: '20px', // distance betwen popup and window border
        box_style: 'modern', // classic, modern
        box_shape: 'rounded', // rounded, squared
        background_color: '#333', // color in hex
        text_color: '#fff', // color in hex
        button_shape: 'rounded', // squared, rounded
        button_color: '#B1B1B1', // color in hex
        button_size: 'normal', // normal, large
        gear_icon_position: 'bottom-left', // top-left, top-center, top-right, center-left, center-right, bottom-left, bottom-center, bottom-right
        gear_icon_color: '#B1B1B1', //color in hex
    },
    popup_options: {
        always_show: false, // true, false, when true popup is displayed always even when consent is given
        gear_display: true, // true, false when true displays icon with cookie settings
        popup_text: 'Cookies Per far funzionare correttamente questo sito, a volte posizioniamo piccoli file di dati chiamati cookie sul tuo dispositivo.', // text for popup
        accept_button_text: 'Accetta', // string, text for accept button
        read_button_text: 'Approfondisci', // string, text for read more button
        read_more_link: '/Start/Privacy.aspx', // string, link to the Read More page
        advenced_button_text: 'Cambia impostazioni', // string, text for advenced button
        grouped_popup: true, // true, false, when true cookies are grouped
        default_group: 'group_3', // string: name, select group that will be selected by default
        content_before_slider: '<h2>Impostazioni della privacy</h2><div class="ct-ultimate-gdpr-cookie-modal-desc"><p>Decidi quali cookie vuoi consentire.</p><p>Puoi modificare queste impostazioni in qualsiasi momento. Tuttavia, questo può comportare alcune funzioni non siano più disponibili. Per informazioni sull\'eliminazione dei cookie, consultare la funzione di guida del browser.</p> <span>Ulteriori informazioni sui cookie che utilizziamo.</span></div><h3>Con il cursore è possibile abilitare o disabilitare diversi tipi di cookie:</h3>',
        // string: this content will be displayed before cookies slider, html tags alowed
        accepted_text: 'Questo sito web farà:',
        declined_text: "Questo sito non farà:",
        save_btn: 'Salva & chiudi', // string, text for modal close btn
        prevent_cookies_on_document_write: true, // prevent cookies on document write when there is no agreement for cookies
        check_country: false,
        countries_prefixes: ['AT', 'BE', 'BG', 'HR', 'CY', 'CZ', 'DK', 'EE', 'FI', 'FR', 'DE', 'GR', 'HU', 'IE', 'IT', 'LV', 'LT', 'LU', 'MT', 'NL', 'PL', 'PT', 'RO', 'SK', 'SI', 'ES', 'SE', 'GB'],
        cookies_groups: {
            group_1: {
                name: 'Essenziali', // string: name
                enable: true, // true, false, you can disable this group by using false
                icon: 'fas fa-check', // string icon class from font-awesome see -> http://fontawesome.io
                list: ['Consenti i cookie di sessione', 'Raccogli le informazioni inserite in moduli di contatto, newsletter e altri moduli in tutte le pagine', 'Ricorda la versione della lingua selezionata'], // array list of options 'Ricorda l\'impostazione dei permessi dei cookie', , 'Tieni traccia di ciò che hai inserito nel carrello', 'Autentica che hai effettuato l\'accesso al tuo account utente'
                blocked_url: [], // array list of url blocked scripts
                local_cookies_name: [], // array, list of local cookies names
            },
            group_2: {
                name: 'Funzionalità', // string: name
                enable: true, // true, false, you can disable this group by using false
                icon: 'fas fa-cog', // string icon class from font-awesome see -> http://fontawesome.io
                list: ['Ricorda la regione e il paese selezionati',], //'Ricorda le impostazioni dei social media', 
                blocked_url: [], // array list of url blocked scripts
                local_cookies_name: ['https://maps.googleapis.com/','facebook.net'], // array, list of local cookies names
            },
            group_3: {
                name: 'Analytics', // string: name
                enable: true, // true, false, you can disable this group by using false
                icon: 'fas fa-chart-bar', // string icon class from font-awesome see -> http://fontawesome.io
                list: ['Tieni traccia delle pagine visitate e delle interazioni intraprese', 'Tieni traccia delle pagine visualizzate e delle interazioni intraprese', 'Tieni traccia del tempo trascorso su ogni pagina', 'Aumentare la qualità dei dati delle funzioni statistiche'],
                blocked_url: [], // array list of url blocked scripts
                local_cookies_name: ['https://www.google-analytics.com/analytics.js','_ga','_gat','_gid'], // array, list of local cookies names
            },
            group_4: {
                name: 'Advertising', // string: name
                enable: true, // true, false, you can disable this group by using false
                icon: 'fas fa-exchange-alt', // string icon class from font-awesome see -> http://fontawesome.io
                list: ['Utilizzare le informazioni per la pubblicità su misura con terze parti', 'Consentono di connettersi ai siti sociali', 'Identifica il dispositivo che stai utilizzando'],
                blocked_url: [], // array list of url blocked scripts
                local_cookies_name: [], // array, list of local cookies names
            },
        },
    },
    forms: {
        prevent_forms_send: false, // true, false, when enabled forms get checkbox with info that need to be checked for form send
        prevent_forms_text: 'Acconsento all\'archiviazione dei miei dati secondo l\'Informativa sulla privacy', // string: information for checkbox info
        prevent_forms_exclude: [], // array of selectors (classes, id), this forms will be excluded from prevent
    },
    configure_mode: {
        on: false,
        parametr: '?configureMeini1234',
        dependencies: ['https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css', '/assets/stylesheets/ct-ultimate-gdpr.min.css', 'https://use.fontawesome.com/releases/v5.0.13/css/all.css'],
        debug: false, // bool: true false, debug mode on/off (showing all 3rd party cookies urls, blockes urls names of all local cookies and names of blocked local cookies )
    }
});