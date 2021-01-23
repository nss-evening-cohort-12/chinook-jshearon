SELECT Invoice.*, COUNT(*) AS 'invoice-items'
FROM InvoiceLine
LEFT JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
