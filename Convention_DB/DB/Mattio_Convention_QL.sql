---------- Interrogazioni DB convention ----------


-- Elenco di tutti i partecipanti
SELECT *
  FROM Persona;


-- Elenco di tutti gli speech
SELECT *
  FROM Speech;


-- Il numero dei relatori per ogni azienda
SELECT Azienda.CodiceAzienda, COUNT(Relatore.CodiceRelatore) AS NumeroRelatori
  FROM Azienda, Relatore
    WHERE Azienda.CodiceAzienda=Relatore.CodiceAzienda
  GROUP BY Azienda.CodiceAzienda;


-- Media dei partecipanti per ogni speech
SELECT AVG(nPartecipanti) AS MediaPartecipanti
FROM(
	SELECT Speech.CodiceSpeech, COUNT(MN_Partecipano.MatricolaPersona) AS nPartecipanti
	FROM MN_Partecipano, Programma, Speech
	WHERE Speech.CodiceSpeech = Programma.CodiceSpeech
	AND Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma
	GROUP BY Speech.CodiceSpeech
	ORDER BY nPartecipanti DESC
	) AS ConteggioPartecipantiSpeech;



-- Conteggio dei partecipanti di ogni speech
SELECT Speech.CodiceSpeech, COUNT(MN_Partecipano.MatricolaPersona) AS nPartecipanti
FROM MN_Partecipano, Programma, Speech
WHERE Speech.CodiceSpeech = Programma.CodiceSpeech
AND Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma
GROUP BY Speech.CodiceSpeech
ORDER BY nPartecipanti DESC;



-- Tutti i parametri della tabella persona (eventuale pagina php di modifica del profilo utente)
SELECT Persona.Nome, Persona.Cognome, Persona.Mail, Persona.Cellulare, Persona.Password, Persona.Tipologia
	FROM Persona


-- Elenco dei partecipanti (nome e cognome)dello 'Speech1' nella facia oraria 'A' nella 'Sala1' (flag arrivo nella tabella MN_Partecipano)
SELECT Persona.Nome, Persona.Cognome
	FROM Programma, MN_Partecipano, Persona
	WHERE Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma
	AND Persona.MatricolaPersona = MN_Partecipano.MatricolaPersona
	AND Programma.CodiceSpeech = 'Speech1'
	AND Programma.CodiceSala = 'Sala1'
	AND Programma.FasciaOraria = 'A'
	AND MN_Partecipano.FlagArrivo = 1;

-- Elenco delle sale
SELECT Sala.Nome, Sala.Capacità
  FROM Sala;
