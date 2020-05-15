
USE Convention;

-- Creazione tabella Azienda
CREATE TABLE IF NOT EXISTS Azienda (
	CodiceAzienda VARCHAR(10) NOT NULL,
	eMail VARCHAR(30) NULL,
	Indirizzo VARCHAR(30) NULL,
	Telefono VARCHAR(15) NULL,
	PRIMARY KEY (CodiceAzienda)
);



SELECT Gare.genere, Atleti.nome, Atleti.cognome
	FROM Gare, Atleti, GareAtleti, Specialita
	WHERE Atleti.id_atleta=GareAtleti.id_atleta
	AND Gare.id_gara=GareAtleti.id_gara
	AND Atleti.nazione = USA AND Gare.id_specialita = nuoto 
	AND GareAtleti.posizione = 1
	AND GareAtleti.anno = 2012
	AND Specialita.id_specialitÃ =Gare.id_specialita



-- Creazione tabella Piano
CREATE TABLE IF NOT EXISTS Piano (
	CodicePiano VARCHAR(10) NOT NULL,
	TotaleSale INT NULL,
	NumeroPiano INT NULL,
	PRIMARY KEY (CodicePiano)
);

-- Creazione tabella Sala
CREATE TABLE IF NOT EXISTS Sala (
	CodiceSala VARCHAR(10) NOT NULL,
	Nome VARCHAR(20) NULL,
	Capacità INT NULL,
	CodicePiano VARCHAR(10) NULL,
	PRIMARY KEY (CodiceSala)
);
ALTER TABLE Sala ADD FOREIGN KEY (CodicePiano) REFERENCES Piano(CodicePiano);


-- Creazione tabella Persona
CREATE TABLE IF NOT EXISTS Persona (
	MatricolaPersona VARCHAR(10) NOT NULL,
	Nome VARCHAR(30) NULL,
	Cognome VARCHAR(30) NULL,
	Mail VARCHAR(30) NULL,
	Password VARCHAR(30) NULL,
	Cellulare VARCHAR(30) NULL,
	Tipologia VARCHAR(30) NULL,
	PRIMARY KEY (MatricolaPersona)
);

-- Creazione tabella Relatore
CREATE TABLE IF NOT EXISTS Relatore (
	CodiceRelatore VARCHAR(10) NOT NULL,
	Nome VARCHAR(30) NULL,
	Cognome VARCHAR(30) NULL,
	Mail VARCHAR(30) NULL,
	Professione VARCHAR(30) NULL,
	Cellulare VARCHAR(30) NULL,
	CodiceAzienda VARCHAR(10) NULL,
	PRIMARY KEY (CodiceRelatore)
);
ALTER TABLE Relatore ADD FOREIGN KEY (CodiceAzienda) REFERENCES Azienda(CodiceAzienda);


-- Creazione tabella Speech
CREATE TABLE IF NOT EXISTS Speech (
	CodiceSpeech VARCHAR(10) NOT NULL,
	Titolo VARCHAR(200) NULL,
	Descrizione VARCHAR(2000) NULL,
	Durata INT NULL,
	PRIMARY KEY (CodiceSpeech)
);

-- Creazione tabella Programma
CREATE TABLE IF NOT EXISTS Programma (
	CodiceSpeech VARCHAR(10) NOT NULL,
	CodiceSala VARCHAR(10) NOT NULL,
	FasciaOraria VARCHAR(10) NOT NULL,
	CodiceProgramma VARCHAR(10) NOT NULL,
	PRIMARY KEY (CodiceProgramma)
);
ALTER TABLE Programma ADD FOREIGN KEY (CodiceSpeech) REFERENCES Speech(CodiceSpeech);
ALTER TABLE Programma ADD FOREIGN KEY (CodiceSala) REFERENCES Sala(CodiceSala);



-- Creazione tabella MN_Partecipano (collegamentro tra programma e persona)
CREATE TABLE IF NOT EXISTS MN_Partecipano (
	MatricolaPersona VARCHAR(10) NOT NULL,
	CodiceProgramma VARCHAR(10) NOT NULL,
	FlagArrivo INT NULL DEFAULT 0,
	PRIMARY KEY (MatricolaPersona,CodiceProgramma)
);
ALTER TABLE MN_Partecipano ADD FOREIGN KEY (MatricolaPersona) REFERENCES Persona(MatricolaPersona);
ALTER TABLE MN_Partecipano ADD FOREIGN KEY (CodiceProgramma) REFERENCES Programma(CodiceProgramma);

-- Creazione tabella MN_TenutoDa (collegamentro tra programma e relatore
CREATE TABLE IF NOT EXISTS MN_TenutoDa (
	CodiceProgramma VARCHAR(10) NOT NULL,
	CodiceRelatore VARCHAR(10) NOT NULL,
	PRIMARY KEY (CodiceProgramma, CodiceRelatore)
);
ALTER TABLE MN_TenutoDa ADD FOREIGN KEY (CodiceProgramma) REFERENCES Programma(CodiceProgramma);
ALTER TABLE MN_TenutoDa ADD FOREIGN KEY (CodiceRelatore) REFERENCES Relatore(CodiceRelatore);
