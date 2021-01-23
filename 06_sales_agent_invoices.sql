SELECT Invoice.*, Employee.FirstName AS "Support Rep Fisrt Name", Employee.LastName AS "Support Rep Last Name"
FROM Invoice 
LEFT JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
