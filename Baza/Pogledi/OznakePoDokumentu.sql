Create View OznakePoDokumentu AS
SELECT COUNT (*) AS "Broj oznaka", DokumentID
FROM Oznaka
GROUP BY DokumentID