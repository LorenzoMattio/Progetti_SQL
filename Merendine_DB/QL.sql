-- Elenco delle merendine della scuola con codice 34, ordinate per prezzo decrescente
SELECT Merende.NomeMerenda, Merende.Prezzo
  FROM Merende, Posizioni, Macchinette, Scuole
    WHERE Scuole.CodScuola = '34'
    AND Merende.codMerenda = Posizioni.CodMerenda
    AND Posizioni.CodMacchinetta = Macchinette.CodMacchinetta
    AND Macchinette.CodScuola = Scuole.CodScuola
  ORDER BY Merende.prezzo DESC;

-- Elenco con nome della merenda, tippo della macchinetta, quantità merendine e nome della scuola in cui si trova la macchinetta; elencare solo le macchinette che hanno almeno una merendina; l'elenco deve essere ordinato alfabeticamente per nome della scuola e subordinare per numero di merendine descrescente presenti nelle macchinette
SELECT Merende.NomeMerenda, Macchinette.TipoMacchinetta, Posizioni.QtaMerendine, Scuole.NomeScuola
  FROM Merende, Macchinette, Posizioni, Scuole
  WHERE Posizioni.QtaMerendine > 0
  AND Merende.codMerenda = Posizioni.CodMerenda
  AND Posizioni.CodMacchinetta = Macchinette.CodMacchinetta
  AND Macchinette.CodScuola = Scuole.CodScuola

  ORDER BY Scuole.NomeScuola ASC, Posizioni.QtaMerendine DESC;

-- Elenco con i nomi delle scuole e numero delle macchinette presenti
SELECT Scuole.NomeScuola, COUNT(Scuole.NomeScuola) AS Conta
  FROM Scuole, Macchinette
  WHERE Macchinette.CodScuola = Scuole.CodScuola
  GROUP BY Scuole.NomeScuola
  ORDER BY Scuole.NomeScuola;

-- Prezzo medio delle macchinette nella scuola 12
SELECT AVG(Merende.prezzo) AS Media
  FROM Merende, Macchinette, Posizioni, Scuole
  WHERE Scuole.CodScuola = 'scA'
  AND Merende.codMerenda = Posizioni.CodMerenda
  AND Posizioni.CodMacchinetta = Macchinette.CodMacchinetta
  AND Macchinette.CodScuola = Scuole.CodScuola

-- Elenco delle macchinette che hanno almeno una merendina con
-- quantità zero
SELECT Macchinette.CodMacchinetta, Macchinette.CodScuola
  FROM Macchinette, Posizioni
  WHERE Posizioni.QtaMerendine = 0
  AND Posizioni.CodMacchinetta = Macchinette.CodMacchinetta
GROUP BY Macchinette.CodMacchinetta;

-- Elenco dei tipi di macchinetta con il numero totale di merendine
-- in esse caricato; escludere dall’elenco i tipi di macchinetta con
 -- meno di 40 merendine.
SELECT Macchinette.CodMacchinetta, Posizioni.CodMacchinetta, SUB(Posizioni.QtaMerendine) AS Somma
  FROM Macchinette, Posizioni
  WHERE Somma > 40
  AND Posizioni.CodMacchinetta = Macchinette.CodMacchinetta;
