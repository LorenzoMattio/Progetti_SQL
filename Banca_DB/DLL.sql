
CREATE DATABASE IF NOT EXISTS 5c_Banca;
USE 5c_Banca;

CREATE TABLE  Cliente  (
   CodiceFiscale  VARCHAR(16) NOT NULL,
   Nome  VARCHAR(30) NOT NULL,
   Cognome  VARCHAR(30) NOT NULL,
   Indirizzo  VARCHAR(30) NOT NULL,
   Citta  VARCHAR(30) NOT NULL,
   Telefono  VARCHAR(30) NOT NULL,
   PRIMARY KEY ( CodiceFiscale )
);

CREATE TABLE  ContoCorrente  (
   Numero  VARCHAR(20) NOT NULL,
   Saldo  INT NOT NULL,
   CodiceFiliale  VARCHAR(5) NOT NULL,
   PRIMARY KEY ( Numero )
);



CREATE TABLE  Filiale  (
   CodiceFiliale  VARCHAR(5) NOT NULL,
   Nome  VARCHAR(30) NOT NULL,
   Citta  VARCHAR(30) NOT NULL,
   PRIMARY KEY ( CodiceFiliale )
);

CREATE TABLE  Prestito  (
   CodiceIdentificativo  VARCHAR(30) NOT NULL,
   Ammontare  INT NOT NULL,
   Matricola VARCHAR(30) NOT NULL,
   DataApertura VARCHAR(30) NOT NULL,
   DataEstinzione VARCHAR(30) NOT NULL,
   CodiceFiliale  VARCHAR(5) NOT NULL,
   PRIMARY KEY ( CodiceIdentificativo ),
   Foreign Key (CodiceFiliale) REFERENCES Filiale(CodiceFiliale)
   );


CREATE TABLE  Possiede_MN  (
   CodiceFiscale  VARCHAR(16) NOT NULL,
   Numero  VARCHAR(20) NOT NULL,
   PRIMARY KEY ( CodiceFiscale, Numero ),
   Foreign Key (CodiceFiscale) REFERENCES Cliente(CodiceFiscale),
   Foreign Key (Numero) REFERENCES ContoCorrente(Numero)
);

CREATE TABLE  Richiede_MN  (
   CodiceFiscale  VARCHAR(16) NOT NULL,
   CodiceIdentificativo  VARCHAR(30) NOT NULL,
   PRIMARY KEY ( CodiceFiscale,CodiceIdentificativo ),
   Foreign Key (CodiceFiscale) REFERENCES Cliente(CodiceFiscale),
   Foreign Key (CodiceIdentificativo) REFERENCES Prestito(CodiceIdentificativo)
);


ALTER TABLE ContoCorrente CONSTRAINT FOREIGN KEY (CodiceFiliale) REFERENCES Filiale (CodiceFiliale);
