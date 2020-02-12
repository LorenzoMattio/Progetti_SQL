
USE 5c_AttivitaStudentesche;

INSERT INTO Istituti VALUES('aa11','Itis Rivoira', 'Via roma', '0123456789');
INSERT INTO Istituti VALUES('bb11','Bodoni', 'Via umberto', '2342345454');
INSERT INTO Istituti VALUES('cc11','Carlo Alberto', 'Via cuneo', '433423432');

INSERT INTO Studenti VALUES('pp11', 'aa11', 'Mattio', 'Lorenzo');
INSERT INTO Studenti VALUES('qq11', 'aa11', 'Rossi', 'Francesco');
INSERT INTO Studenti VALUES('ee11', 'bb11', 'Audisio', 'Mattia');
INSERT INTO Studenti VALUES('tt11', 'cc11', 'Barroero', 'Massimo');
INSERT INTO Studenti VALUES('uu11', 'aa11', 'Botta', 'Mattia');
INSERT INTO Studenti VALUES('ii11', 'cc11', 'Bima', 'Nicola');

INSERT INTO Manifestazioni VALUES('1111', 'Nuoto', 'Piasco');
INSERT INTO Manifestazioni VALUES('2222', 'Salto in alto', 'Cuneo');

INSERT INTO Professori VALUES('11pp', 'aa11', '1111', 'Aldo', 'Baglio');
INSERT INTO Professori VALUES('11aa', 'bb11', '2222', 'Francesco', 'Ficetti');
INSERT INTO Professori VALUES('11bb', 'cc11', '1111', 'Davide', 'Battisti');
INSERT INTO Professori VALUES('11cc', 'aa11', '2222', 'Andrea', 'Pesacane');

INSERT INTO CollegamentoManifestazioniStudenti VALUES('1111', 'pp11');
INSERT INTO CollegamentoManifestazioniStudenti VALUES('1111', 'qq11');
INSERT INTO CollegamentoManifestazioniStudenti VALUES('2222', 'ee11');
INSERT INTO CollegamentoManifestazioniStudenti VALUES('2222', 'tt11');
