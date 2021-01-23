SELECT printf("$%.2f",  SUM(Invoice.Total)) AS "Total Sales", Employee.EmployeeId
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
LEFT JOIN EMPLOYEE ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId
