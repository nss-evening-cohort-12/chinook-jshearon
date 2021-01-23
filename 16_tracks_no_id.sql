SELECT Track.Name, Album.Title, MediaType.Name, Genre.Name
FROM Track
LEFT JOIN Album ON  Track.AlbumId = Album.AlbumId
LEFT JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
LEFT JOIN Genre ON Genre.GenreId = Track.GenreId
ORDER BY Album.AlbumId, Track.Name
