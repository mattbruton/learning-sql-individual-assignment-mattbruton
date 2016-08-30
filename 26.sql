SELECT DISTINCT Artist.Name AS 'Most Successful Artists', COUNT(Track.TrackId) AS Sold FROM Track
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
JOIN Album ON Track.AlbumId == Album.AlbumId
JOIN Artist ON Album.ArtistId == Artist.ArtistId
JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId
GROUP BY Artist.Name
ORDER BY Sold DESC LIMIT 3