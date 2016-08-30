SELECT Track.Name AS 'Most Purchased Tracks', COUNT(Track.TrackId) AS Sold FROM Track
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId
GROUP BY Track.Name
ORDER BY Sold DESC LIMIT 5