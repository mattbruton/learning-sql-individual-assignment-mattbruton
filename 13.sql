SELECT InvoiceLineId AS 'Invoice Line ID', Track.Name AS 'Song Title', Artist.Name AS 'Artist' FROM InvoiceLine 
    JOIN Track 
        ON Track.TrackId == InvoiceLine.TrackId
    JOIN Album
        ON Track.AlbumId == Album.AlbumId
    JOIN Artist
        ON Album.ArtistId == Artist.ArtistId
ORDER BY InvoiceLineId