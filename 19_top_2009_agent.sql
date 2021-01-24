SELECT MAX(sales_total),  EmployeeName
FROM
(SELECT SUM(Invoice.Total) AS "sales_total", Employee.FirstName + ' ' + Employee.LastName AS 'EmployeeId'
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
LEFT JOIN EMPLOYEE ON Employee.EmployeeId = Customer.SupportRepId
WHERE strftime('%Y', Invoice.InvoiceDate) = '2009'
GROUP BY Employee.EmployeeId)
