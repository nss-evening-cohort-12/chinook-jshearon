SELECT COUNT(*) , Invoice.InvoiceId AS 'Invoice Id'
FROM InvoiceLine
LEFT JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY InvoiceLine.InvoiceId
