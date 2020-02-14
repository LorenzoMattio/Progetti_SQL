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

-- Elenco dei partecipanti dello Programma3 già arrivati all'evento (flag arrivo nella tabella MN_Partecipano)
-- 
