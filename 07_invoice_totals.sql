SELECT SUM(Invoice.Total), Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName, Employee.LastName
FROM Invoice
LEFT JOIN CUSTOMER ON Invoice.CustomerId = Customer.CustomerId
LEFT JOIN EMPLOYEE ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Invoice.CustomerId
