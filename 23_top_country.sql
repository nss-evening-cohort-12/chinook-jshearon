SELECT MAX(total_spend) , Country
FROM
(SELECT SUM(Invoice.Total) AS 'total_spend', Invoice.BillingCountry AS 'Country'
FROM Invoice
GROUP BY Invoice.BillingCountry)
