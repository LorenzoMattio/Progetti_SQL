
USE 5c_MulteComune;

-- Tabella Automobilista
INSERT INTO Automobilista(CodAutomobilista,Nome, Cognome, CodiceFiscale) VALUES
	('par1','Marco','Va Lentino','3120418986'),
	('par2','Matteo','Bianchi','3120418986'),
	('par3','Luca','Verdi','3120418986'),
	('par4','Mattia','Gialli','3120418986'),
	('par5','Francesco','Viola','3120418986'),
	('par6','Nicola','Verde','3120418986'),
	('par7','Stefano','Rossi','3120418986'),
	('par8','Andrea','Rossi','3120418986');

-- Tabella Agente
INSERT INTO Agente(CodAgente, Nome, Cognome) VALUES
	('a123','Marco','Fallo'),
	('b123','Ermgildo','Piantino'),
	('c123','Aldo','Baglio'),
	('d123','Franco','Severo'),
	('e123','Bello','Rossi'),
	('f123','Ero','Io');

-- Tabella Tipo
INSERT INTO Tipo(CodTipo, Descrizione) VALUES
	('nda1','Divieto di sosta'),
	('nda2','Velocità'),
	('nda3','Sorpasso'),
	('nda4','Cintura'),
	('nda5','Bollo'),
	('nda6','Assicurazione'),
	('nda7','ZTL');

-- Tabella Veicolo
INSERT INTO Veicolo(Targa, Marca, Proprietario, Modello) VALUES
	('EX234BE','Fiat','Rossi','sainen'),
	('GA123NH"','Fiat','Bianchi','boh'),
	('DJ234JH','Mercedes','Verdi','oi'),
	('FR891JK','Opel','Gialli','ai'),
	('FD444XX','Audi','Viola','ehi'),
	('DD164PC','Toyota','Verde','you'),
	('AS932BE','Izuzu','Rossi','are'),
	('BR222NJ','Ford','Rossi', 'wer');

-- Programma Infrazione
INSERT INTO Infrazione(CodInfrazione, Data, Importo, CodAgente, Targa, CodAutomobilista, CodTipo) VALUES
	('w1','12/01/20', 12.34,'a123','EX234BE','par1', 'nda1'),
	('w12','12/01/20', 45.34,'a123','GA123NH','par2', 'nda2'),
	('w13','14/01/20', 76.34,'b123','DJ234JH','par3', 'nda2'),
	('w134','16/01/20', 234.34,'c123','DJ234JH','par4', 'nda3'),
	('w1345','17/01/20', 123.34,'d123','FR891JK','par1', 'nda4'),
	('w1346','14/02/20', 76.34,'e123','FD444XX','par5', 'nda5'),
	('w1347','14/02/20', 987.34,'f123','DD164PC','par6', 'nda6');
