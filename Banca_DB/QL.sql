-- 1
SELECT Prestito.Ammontare, Cliente.Nome
FROM Prestito, Cliente, Richiede_MN
WHERE Richiede_MN.CodiceFiscale = Cliente.CodiceFiscale
AND Richiede_MN.CodiceIdentificativo = Prestito.CodiceIdentificativo

-- 2
SELECT Cliente.Nome
FROM Cliente, Richiede_MN
WHERE Richiede_MN.CodiceFiscale = Cliente.CodiceFiscale

-- 3
SELECT Cliente.Nome
FROM Cliente, Possiede_MN
WHERE Possiede_MN.CodiceFiscale = Cliente.CodiceFiliale

-- 4
SELECT Cliente.Nome, Filiale.Nome
FROM Filiale, ContoCorrente, Cliente, Possiede_MN
WHERE ContoCorrente.CodiceFiliale = Filiale.CodiceFiliale
AND Possiede_MN.CodiceFiscale = Cliente.CodiceFiscale
AND Possiede_MN.Numero = ContoCorrente.Numero

-- 5
SELECT AVG(ContoCorrente.Saldo), Filiale.Nome
FROM Filiale, ContoCorrente
WHERE ContoCorrente.CodiceFiliale = Filiale.CodiceFiliale
GROUP BY Filiale.Nome

-- 6
SELECT Cliente.Nome, Filiale.Nome
FROM Filiale, ContoCorrente, Cliente, Possiede_MN
WHERE ContoCorrente.CodiceFiliale = Filiale.CodiceFiliale
AND Possiede_MN.CodiceFiscale = Cliente.CodiceFiscale
AND Possiede_MN.Numero = ContoCorrente.Numero
AND Filiale.Citta = 'Torino'

-- 7
SELECT Cliente.Nome, Filiale.Nome, AVG(ContoCorrente.Saldo)
FROM Filiale, ContoCorrente, Cliente, Possiede_MN
WHERE ContoCorrente.CodiceFiliale = Filiale.CodiceFiliale
AND Possiede_MN.CodiceFiscale = Cliente.CodiceFiscale
AND Possiede_MN.Numero = ContoCorrente.Numero
AND Cliente.Citta = 'Novara'

-- 8



-- 9
SELECT Cliente.Nome, Filiale.Nome, AVG(ContoCorrente.Saldo)
FROM Filiale, ContoCorrente, Cliente, Possiede_MN
WHERE ContoCorrente.CodiceFiliale = Filiale.CodiceFiliale
AND Possiede_MN.CodiceFiscale = Cliente.CodiceFiscale
AND Possiede_MN.Numero = ContoCorrente.Numero
AND Filiale.Nome = 'Agenzia2'
AND Filiale.Citta = 'Cuneo'

-- 10
