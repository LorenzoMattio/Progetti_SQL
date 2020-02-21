
USE 5c_Convention;

-- Tabella Piano
INSERT INTO Piano(CodicePiano,TotaleSale, NumeroPiano) VALUES
	('Piano1', 10, 1),
	('Piano2', 5, 2),
	('Piano3', 6, 3);

-- Tabella Sala
INSERT INTO Sala(CodiceSala, Capacità, CodicePiano) VALUES
	('Sala1','50','Piano1'),
	('Sala2','100','Piano2'),
	('Sala3','50','Piano3'),
	('Sala4','60','Piano2'),
	('Sala5','40','Piano1'),
	('Sala6','150','Piano3');

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
	('Speech1','Titolo1','Argomento1', 1234),
	('Speech2','Titolo2','Argomento2', 4321),
	('Speech3','Titolo3','Argomento3', 23234),
	('Speech4','Titolo4','Argomento4', 23432),
	('Speech5','Titolo5','Argomento5', 29873);

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
