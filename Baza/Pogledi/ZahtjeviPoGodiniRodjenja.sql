Create View "Zahtjevi po godini ro�enja" AS
SELECT COUNT(*) AS "Broj zahtjeva", YEAR(osoba.DatumRodenja) AS "Godina ro�enja"
FROM Zahtjev
JOIN Osoba ON Zahtjev.OsobaID=Osoba.OsobaID
GROUP BY YEAR(osoba.DatumRodenja)