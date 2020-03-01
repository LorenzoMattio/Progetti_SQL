
-- CREATE DATABASE 5c_MulteComune;
USE 5c_MulteComune;

-- Creazione tabella Infrazione
CREATE TABLE IF NOT EXISTS Infrazione (
	CodInfrazione VARCHAR(10) NOT NULL,
	Data VARCHAR(30) NULL,
	Importo FLOAT NULL,
	CodAgente VARCHAR(10) NOT NULL,
	Targa VARCHAR(10) NOT NULL,
	CodAutomobilista VARCHAR(10) NOT NULL,
	CodTipo VARCHAR(10) NOT NULL,
	PRIMARY KEY (CodInfrazione)
);

-- Creazione tabella Automobilista
CREATE TABLE IF NOT EXISTS Automobilista (
	CodAutomobilista VARCHAR(10) NOT NULL,
	Nome VARCHAR(10) NULL,
	Cognome VARCHAR(10) NULL,
	CodiceFiscale VARCHAR(10) NULL,
	Città VARCHAR(10) NULL,
	PRIMARY KEY (CodAutomobilista)
);

-- Creazione tabella Agente
CREATE TABLE IF NOT EXISTS Agente (
	CodAgente VARCHAR(10) NOT NULL,
	Nome VARCHAR(10) NULL,
	Cognome VARCHAR(10) NULL,
	PRIMARY KEY (CodAgente)
);


-- Creazione tabella Tipo
CREATE TABLE IF NOT EXISTS Tipo (
	CodTipo VARCHAR(10) NOT NULL,
	Descrizione VARCHAR(30) NULL,
	PRIMARY KEY (CodTipo)
);

-- Creazione tabella Veicolo
CREATE TABLE IF NOT EXISTS Veicolo (
	Targa VARCHAR(10) NOT NULL,
	Marca VARCHAR(30) NULL,
	Modello VARCHAR(30) NULL,
	Proprietario VARCHAR(30) NULL,
	PRIMARY KEY (Targa)
);


ALTER TABLE Infrazione ADD FOREIGN KEY (CodAgente) REFERENCES Agente(CodAgente);
ALTER TABLE Infrazione ADD FOREIGN KEY (Targa) REFERENCES Veicolo(Targa);
ALTER TABLE Infrazione ADD FOREIGN KEY (CodTipo) REFERENCES Tipo(CodTipo);
ALTER TABLE Infrazione ADD FOREIGN KEY (CodAutomobilista) REFERENCES Automobilista(CodAutomobilista);
