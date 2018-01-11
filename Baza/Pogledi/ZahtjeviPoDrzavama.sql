Create View ZahtjeviPoDrzavama
AS Select COUNT(*) as BrojZahtjeva, Drzava.DrzavaID, Drzava.NazivDrzava
from Zahtjev
JOIN Osoba on Zahtjev.OsobaID=Osoba.OsobaID
JOIN Mjesto on Osoba.MjestoID=Mjesto.MjestoID
JOIN Drzava on Mjesto.DrzavaID=Drzava.DrzavaID
GROUP BY Drzava.DrzavaID, Drzava.NazivDrzava