SELECT  COUNT(*),  Track.Name AS 'track_name'
FROM InvoiceLine
LEFT JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
LEFT JOIN Track ON Track.TrackId = InvoiceLine.TrackId
WHERE strftime('%Y', Invoice.InvoiceDate) = '2013'
GROUP BY InvoiceLine.TrackId
ORDER BY track_name
