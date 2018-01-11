Create View "Zahtjevi po godini roðenja" AS
SELECT COUNT(*) AS "Broj zahtjeva", YEAR(osoba.DatumRodenja) AS "Godina roðenja"
FROM Zahtjev
JOIN Osoba ON Zahtjev.OsobaID=Osoba.OsobaID
GROUP BY YEAR(osoba.DatumRodenja)