SELECT MAX(media_count), media_type_name
FROM
(SELECT Count(*) AS "media_count", MediaType.Name AS 'media_type_name'
FROM InvoiceLine
LEFT JOIN Track ON InvoiceLine.TrackId = Track.TrackId
LEFT JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY Track.MediaTypeId)
