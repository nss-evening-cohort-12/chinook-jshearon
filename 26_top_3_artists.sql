SELECT  COUNT(*) AS 'count',  Artist.Name AS 'artist_name'
FROM InvoiceLine
LEFT JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
LEFT JOIN Track ON Track.TrackId = InvoiceLine.TrackId
LEFT JOIN Album ON Album.AlbumId = Track.AlbumId
LEFT JOIN Artist ON Artist.ArtistId = Album.AlbumId
GROUP BY Artist.ArtistId
ORDER BY count DESC
LIMIT 3
