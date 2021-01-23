SELECT COUNT(*),  strftime('%Y', Invoice.InvoiceDate) AS 'Year'
FROM Invoice
WHERE strftime('%Y', Invoice.InvoiceDate) IN('2009', '2011')
GROUP BY strftime('%Y', Invoice.InvoiceDate)
