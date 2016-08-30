SELECT Employee.LastName || ', ' || Employee.FirstName AS 'Employee Name', SUM(Total) AS 'Total Sales' FROM Employee 
JOIN Customer ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice On Invoice.CustomerId == Customer.CustomerId 
GROUP By Employee.EmployeeId