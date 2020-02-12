CREATE DATABASE 5c_AttivitaStudentesche;
USE 5c_AttivitaStudentesche;

-- Creazione tabella Studenti
CREATE TABLE IF NOT EXISTS Studenti (
	CodStudente VARCHAR(5) NOT NULL,
  CodIstituto VARCHAR(5) NOT NULL,
	Cognome VARCHAR(30) NULL,
  Nome VARCHAR(30) NULL,
  Classe VARCHAR(30) NULL,
	DataNascita DATE() NULL,
	PRIMARY KEY (CodStudente)
);

-- Creazione tabella Manifestazioni
CREATE TABLE IF NOT EXISTS Manifestazioni (
	CodManifestazione VARCHAR(5) NOT NULL,
	Descrizione VARCHAR(30) NULL,
  Luogo VARCHAR(30) NULL,
	DataInizio DATE() NULL,
	PRIMARY KEY (CodManifestazione)
);

-- Creazione tabella Istituti
CREATE TABLE IF NOT EXISTS Istituti (
	CodIstituto VARCHAR(5) NOT NULL,
	Nome VARCHAR(30) NULL,
  Indirizzo VARCHAR(30) NULL,
	Telefono VARCHAR(12) NULL,
	PRIMARY KEY (CodIstituto)
);

-- Creazione tabella Professori
CREATE TABLE IF NOT EXISTS Professori (
	CodProfessori VARCHAR(5) NOT NULL,
  CodIstituto VARCHAR(5) NOT NULL,
  CodManifestazione VARCHAR(5) NOT NULL,
	Nome VARCHAR(30) NULL,
  Cognome VARCHAR(30) NULL,
	PRIMARY KEY (CodProfessori)
);

-- Creazione tabella CollegamentoManifestazioniStudenti
CREATE TABLE IF NOT EXISTS CollegamentoManifestazioniStudenti (
	CodManifestazione VARCHAR(5) NOT NULL,
  CodStudente VARCHAR(5) NOT NULL,
	PRIMARY KEY (CodManifestazione, CodStudente)
);


ALTER TABLE Studenti ADD FOREIGN KEY (CodIstituto) REFERENCES Istituti(CodIstituto);
ALTER TABLE Professori ADD FOREIGN KEY (CodIstituto) REFERENCES Istituti(CodIstituto);
ALTER TABLE Professori ADD FOREIGN KEY (CodManifestazione) REFERENCES Manifestazioni(CodManifestazione);
ALTER TABLE CollegamentoManifestazioniStudenti ADD FOREIGN KEY (CodManifestazione) REFERENCES Manifestazioni(CodManifestazione);
ALTER TABLE CollegamentoManifestazioniStudenti ADD FOREIGN KEY (CodStudente) REFERENCES Studenti(CodStudente);
