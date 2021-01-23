SELECT Count(*), Invoice.BillingCountry
FROM Invoice
GROUP BY BillingCountry
