---------- Interrogazioni DB convention ----------


-- Elenco di tutti i partecipanti
SELECT *
  FROM Persona;


-- Elenco di tutti gli speech
SELECT *
  FROM Speech;


-- Relatori per ogni azienda
SELECT Azienda.CodiceAzienda, COUNT(Relatore.CodiceRelatore) AS NumeroRelatori
  FROM Azienda, Relatore
    WHERE Azienda.CodiceAzienda=Relatore.CodiceAzienda
  GROUP BY Azienda.CodiceAzienda;


-- Media dei partecipanti per ogni speech
SELECT Speech.CodiceSpeech, AVG(Persona.MatricolaPersona) AS MediaPartecipanti
  FROM Speech, Programma, MN_Partecipano, Persona
    WHERE Persona.MatricolaPersona = MN_Partecipano.MatricolaPersona
    AND Sceglie.CodiceProgramma = Programma.CodiceProgramma
    AND Programma.CodiceSpeech = Speech.CodiceSpeech
  GROUP BY Speech.CodiceSpeech;

-- Tutti i parametri della tabella persona (eventuale pagina php di modifica del profilo utente)
SELECT Persona.Nome, Persona.Cognome, Persona.Mail, Persona.Cellulare, Persona.Password, Persona.Tipologia
	FROM Persona


-- Elenco dei partecipanti del Programma3 già arrivati all'evento (flag arrivo nella tabella MN_Partecipano)
SELECT Persona.Nome
	FROM Persona, Programma
	WHERE Programma.CodiceProgramma = 'Programma3'
	AND Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma
