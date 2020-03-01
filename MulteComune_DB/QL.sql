---------- Interrogazioni DB ----------
-- 1
SELECT Automobilista.Nome, Automobilista.Cognome
  FROM Automobilista, Infrazione, Tipo
  WHERE Infrazione.CodAutomobilista = Automobilista.CodAutomobilista
  AND Infrazione.CodTipo = Tipo.CodTipo
  AND Tipo.Descrizione = 'Divieto di sosta'

-- 2
SELECT Veicolo.Marca, Veicolo.Modello
  FROM Veicolo, Infrazione, Agente
  WHERE Infrazione.CodAgente = Agente.CodAgente
  AND Infrazione.Targa = Veicolo.Targa
  AND Agente.Cognome = 'Rossi'
  AND Infrazione.Data = '14/02/20'
  GROUP BY Veicolo.Marca

-- 3
SELECT Infrazione.Targa, Veicolo.Proprietario
  FROM Infrazione, Veicolo, Agente, Tipo
  WHERE Infrazione.Targa = Veicolo.Targa
  AND Infrazione.CodAgente = Agente.CodAgente
  AND Infraizone.CodTipo = Tipo.CodTipo
  AND Tipo.Descrizione = 'Velocità'
  AND Agente.Cognome = 'Verdi'

-- 4
SELECT Infrazione.Data, Tipo.Descrizione
  FROM Infrazione, Tipo, Automobilista
  WHERE Infraizone.CodTipo = Tipo.CodTipo
  AND Infrazione.CodAutomobilista = Automobilista.CodAutomobilista
  AND Automobilista.Cognome = 'Va Lentino'

-- 5
SELECT COUNT(Infrazione.CodInfrazione)
  FROM Infrazione, Agente
  WHERE Infrazione.CodAgente = Agente.CodAgente
  AND Agente.Cognome = 'Severo'

-- 6
SELECT SUM(Infrazione.Importo)
  FROM Infrazione, Veicolo
  WHERE Infrazione.Targa = 'FD444XX'
