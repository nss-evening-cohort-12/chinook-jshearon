SELECT Track.Name 
FROM InvoiceLine
Left JOIN Track ON InvoiceLine.TrackId = Track.TrackId
