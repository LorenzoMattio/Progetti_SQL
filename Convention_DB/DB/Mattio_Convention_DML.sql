
USE Convention;

-- Tabella Piano
INSERT INTO Piano(CodicePiano,TotaleSale, NumeroPiano) VALUES
	('Piano1', 10, 1),
	('Piano2', 5, 2),
	('Piano3', 6, 3);

-- Tabella Sala
INSERT INTO Sala(CodiceSala, Nome, Capacità, CodicePiano) VALUES
	('Sala1','Venere','50','Piano1'),
	('Sala2','Saturno','100','Piano2'),
	('Sala3','Nettuno','50','Piano3'),
	('Sala4','Terra','110','Piano2'),
	('Sala5','Mercurio','40','Piano1'),
	('Sala6','Giove','500','Piano3');

-- Tabella Azienda
INSERT INTO Azienda(CodiceAzienda, eMail, Indirizzo, Telefono) VALUES
	('Azienda1','azienda1@gmail.com','Via Azienda 1','0175125831'),
	('Azienda2','azienda2@gmail.com','Via Azienda 2','0175125832'),
	('Azienda3','azienda3@gmail.com','Via Azienda 3','0175125833'),
	('Azienda4','azienda4@gmail.com','Via Azienda 4','0175125834'),
	('Azienda5','azienda5@gmail.com','Via Azienda 5','0175125835'),
	('Azienda6','azienda6@gmail.com','Via Azienda 6','0175125836'),
	('Azienda7','azienda7@gmail.com','Via Azienda 7','0175125837');

-- Tabella Partecipante
INSERT INTO Persona(MatricolaPersona, Nome, Cognome, Cellulare, Mail, Tipologia, Password) VALUES
	('par1','Marco','Rossi','3120418986','par1@gmail.com','Studente', '1234er43'),
	('par2','Matteo','Bianchi','3120418986','par2@gmail.com','Docente', '12er43'),
	('par3','Luca','Verdi','3120418986','par3@gmail.com','Libero Professionista', '1234e3'),
	('par4','Mattia','Gialli','3120418986','par4@gmail.com','Studente', '1234er43'),
	('par5','Francesco','Viola','3120418986','par5@gmail.com','Docente', '12343'),
	('par6','Nicola','Verde','3120418986','par6@gmail.com','Docente', '1234er43'),
	('par7','Stefano','Rossi','3120418986','par7@gmail.com','Libero Professionista', '12r43'),
	('par8','Andrea','Rossi','3120418986','par8@gmail.com','Libero Professionista', '123werd43');

-- Tabella Speech
INSERT INTO Speech(CodiceSpeech, Titolo, Descrizione, Durata) VALUES
	('Speech1','Perché il COVID-19 ci sta colpendo, e come prepararsi alla prossima ondata','Dove si è originato il corona virus, in che modo si è diffuso così rapidamente e cosa ci dobbiamo aspettare? Condividendo la propria opinione sull epidemia, l esperta di salute mondiale e TED Fellow Alanna Shaikh ripercorre la diffusione del COVID-19, ci spiega perché le restrizioni sui viaggi sono inutili e sottolinea quali cambiamenti in campo medico sono necessari in tutto il mondo per affrontare la prossima pandemia. "Dobbiamo far sì che ogni paese nel mondo abbia i mezzi per identificare nuove malattie e curarle", spiega.', 1234),
	('Speech2','I dittatori odiano le vignette politiche, così io continuo a disegnarle','"Una vignetta politica è il barometro della libertà", afferma Rayma Suprani, che è stata esiliata dal suo Paese nativo, il Venezuela, per aver pubblicato materiale che critica il governo. "Ecco perché i dittatori odiano i vignettisti". In un intervento corredato dai momenti salienti della sua carriera trascorsa a inveire contro il totalitarismo, la Suprani esplora come le vignette fungano da specchio della società e rivelino verità nascoste -- e spiega perché continui a disegnare a un caro prezzo personale.', 4321),
	('Speech3','Cosa svelano i microbi in rapporto al cambiamento climatico','Se mutano gli oceani, cambia il pianeta, e tutto inizia dai microbi, dice la biologa oceanografa Angelicque White. Col supporto di dati raccolti in decine di anni, White spiega come gli scienziati usino questi antichi microorganismi come un essenziale barometro della salute degli oceani e come potremmo ringiovanirli mentre le temperature marine aumentano inesorabilmente.', 23234),
	('Speech4','Il passato, presente e futuro della dipendenza da nicotina','L uso del tabacco resta la principale causa di malattie e morti prevenibili negli Stati Uniti e che uccide molte più persone ogni anno di alcol, Aids, incidenti stradali, droghe, omicidi e suicidi tutti insieme. Seguite l esperto di politica sanitaria, Mitch Zeller, nelle oscure profondità dell industria del tabacco, che rivelerà la sordida storia di dipendenza da nicotina e vi inviterà a immaginare un mondo dove un cambio di politica possa aiutare le persone a non diventare dipendenti.', 23432),
	('Speech5','Perchè laghi e fiumi dovrebbero avere gli stessi diritti delle persone','Lacqua è essenziale per la vita. Tuttavia agli occhi della legge, rimane ampiamente indifesa -- lasciando molte comunità senza accesso all acqua potabile, dice la studiosa di legge Kelsey Leonard. In questo forte intervento, dimostra perché garantire la personalità giuridica a fiumi e laghi -- dando loro gli stessi diritti degli uomini -- è il primo passo per proteggere i nostri sistemi idrici e trasformare drasticamente il modo di vedere questa risorsa vitale.', 29873);

-- Tabella Programma
INSERT INTO Programma(CodiceProgramma, FasciaOraria, CodiceSala, CodiceSpeech) VALUES
	('Programma1','A','Sala1','Speech1'),
	('Programma2','B','Sala2','Speech2'),
	('Programma3','C','Sala3','Speech3'),
	('Programma4','C','Sala4','Speech4'),
	('Programma5','B','Sala5','Speech5'),
	('Programma6','A','Sala6','Speech2');

-- Programma Relatore
INSERT INTO Relatore(CodiceRelatore, Nome, Cognome, Cellulare, Mail, CodiceAzienda, Professione) VALUES
	('Relatore1','Marco','Rossi','3120418986','relatore1@gmail.com','Azienda1', 'ciclista'),
	('Relatore2','Luca','Rossi','3120418986','relatore2@gmail.com','Azienda2', 'pilota'),
	('Relatore3','Andrea','Rossi','3120418986','relatore3@gmail.com','Azienda3', 'studente'),
	('Relatore4','Mattia','Rossi','3120418986','relatore4@gmail.com','Azienda4', 'artigiano'),
	('Relatore5','Giacomo','Rossi','3120418986','relatore5@gmail.com','Azienda5', 'startupper'),
	('Relatore6','Fabio','Rossi','3120418986','relatore6@gmail.com','Azienda1', 'giardiniere'),
	('Relatore7','Alessandro','Rossi','3120418986','relatore7@gmail.com','Azienda7', 'commerciante');

-- Tabella Relaziona
INSERT INTO MN_TenutoDa(CodiceRelatore, CodiceProgramma) VALUES
	('Relatore1','Programma1'),
	('Relatore2','Programma2'),
	('Relatore3','Programma3'),
	('Relatore4','Programma4'),
	('Relatore5','Programma5'),
	('Relatore6','Programma6'),
	('Relatore7','Programma2');

-- Tabella Sceglie
INSERT INTO MN_Partecipano(MatricolaPersona, CodiceProgramma, FlagArrivo) VALUES
	('par1','Programma1', 0),
	('par2','Programma2', 0),
	('par3','Programma1', 1),
	('par7','Programma4', 0),
	('par5','Programma5', 0),
	('par6','Programma6', 0),
	('par8','Programma3', 0);
