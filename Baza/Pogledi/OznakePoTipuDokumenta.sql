Create View OznakePoTipuDokumenta AS
SELECT COUNT(*) As "Broj oznaka", Dokument.TipDokumenta
FROM Oznaka
JOIN Dokument on Oznaka.DokumentID=Dokument.DokumentID
GROUP BY Dokument.TipDokumenta