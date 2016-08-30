SELECT Track.Name AS 'Most Purchased Track of 2013', COUNT(Track.TrackId) AS Sold FROM Track
JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.Name
ORDER BY Sold DESC LIMIT 9