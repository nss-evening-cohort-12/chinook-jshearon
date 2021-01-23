SELECT Count(*), Playlist.Name
FROM PlaylistTrack
LEFT JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.PlaylistId
