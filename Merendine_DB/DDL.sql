
USE 5c_Merendine;

-- Creazione tabella Merende
CREATE TABLE IF NOT EXISTS `Merende` (
	`CodMerenda` VARCHAR(5) NOT NULL,
	`NomeMerenda` VARCHAR(30) NULL,
	`Prezzo` FLOAT NULL,
	PRIMARY KEY (`CodMerenda`)
);

-- Creazione tabella Macchinette
CREATE TABLE IF NOT EXISTS `Macchinette` (
	`CodMacchinetta` VARCHAR(5) NOT NULL,
	`TipoMacchinetta` VARCHAR(20) NULL,
	`CodScuola` VARCHAR(5) NULL,
	PRIMARY KEY (`CodMacchinetta`)
);

-- Creazione tabella Posizioni
CREATE TABLE IF NOT EXISTS `Posizioni` (
	`CodPos` VARCHAR(5) NOT NULL,
	`QtaMerendine` INT(6) NULL,
	`CodMerenda` VARCHAR(5) NOT NULL,
	`CodMacchinetta` VARCHAR(5) NOT NULL,
	PRIMARY KEY (`CodPos`)
);

-- Creazione tabella Scuole
CREATE TABLE IF NOT EXISTS `Scuole` (
	`CodScuola` VARCHAR(5) NOT NULL,
	`NomeScuola` VARCHAR(30) NULL,
	PRIMARY KEY (`CodScuola`)
);

ALTER TABLE Posizioni ADD FOREIGN KEY (CodMerenda) REFERENCES Merende(CodMerenda);
ALTER TABLE Posizioni ADD FOREIGN KEY (CodMacchinetta) REFERENCES Macchinette(CodMacchinetta);
ALTER TABLE Macchinette ADD FOREIGN KEY (CodScuola) REFERENCES Scuole(CodScuola);
