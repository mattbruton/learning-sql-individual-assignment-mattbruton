SELECT DISTINCT MediaType.Name AS 'Most Popular Media Type', COUNT(Track.TrackId) AS Sold FROM Track
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId
JOIN MediaType ON MediaType.MediaTypeId == Track.MediaTypeId
GROUP BY MediaType.Name
ORDER BY Sold DESC LIMIT 1