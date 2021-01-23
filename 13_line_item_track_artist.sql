SELECT Track.Name, Artist.Name
FROM InvoiceLine
LEFT JOIN Track ON InvoiceLine.TrackId = Track.TrackId
LEFT JOIN Album ON Album.AlbumId = Track.AlbumId
LEFT JOIN Artist ON Album.ArtistId = Artist.ArtistId
