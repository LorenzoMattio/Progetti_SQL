--------------------------------
-- Interrogazioni al database --
--------------------------------

-- Elenco dei dati degli istruttori
SELECT * FROM istruttori;

-- Dati completi di tutti gli istruttori che si chiamano "barbara"
SELECT *
	FROM istruttori
		WHERE istruttori.nome = 'Barbara';

-- Cognome e telefono di tutti gli istruttori che si chiamano "barbara"
SELECT istruttori.cognome, istruttori.tel
	FROM istruttori
		WHERE istruttori.nome = 'Barbara';

-- Numero di posti del corso di pesi
SELECT corso.num_posti
	FROM corsi
		WHERE corsi.descrizione = 'pesi';

-- Elenco iscritti (nome e cognome) al corso aerobica
SELECT clienti.nome, clienti.cognome, corsi.num_posti
	FROM clienti
		INNER JOIN clienti_corsi ON clienti.pk_cliente = clienti_corsi.fk_cliente
		INNER JOIN corsi ON corsi.pk_corso = clienti_corsi.fk_corso
		WHERE corsi.descrizione = 'aerobica';

-- Elenco iscritti (nome e cognome) al corso di aerobica con join implicito
SELECT clienti.nome, clienti.cognome
	FROM clienti, clienti_corsi, corsi
		WHERE corsi.descrizione = 'aerobica'
		AND clienti.pk_cliente = clienti_corsi.fk_cliente
		AND corsi.pk_corso = clienti_corsi.fk_corso;
