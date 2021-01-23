SELECT SUM(Invoice.Total), Invoice.BillingCountry
FROM Invoice
GROUP BY Invoice.BillingCountry
