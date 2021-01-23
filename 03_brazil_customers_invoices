SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry 
FROM Customer 
LEFT JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId 
WHERE Customer.Country = "Brazil"
