SELECT  COUNT(*) AS 'count',  Track.Name AS 'track_name'
FROM InvoiceLine
LEFT JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
LEFT JOIN Track ON Track.TrackId = InvoiceLine.TrackId
GROUP BY InvoiceLine.TrackId
ORDER BY count DESC
LIMIT 5
