SELECT Employee.LastName || ', ' || Employee.FirstName AS 'Employee Name', SUM(Total) AS 'Total Sales for 2011' FROM Employee 
JOIN Customer ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice On Invoice.CustomerId == Customer.CustomerId WHERE Invoice.InvoiceDate LIKE '2011%'
GROUP By Employee.EmployeeId ORDER BY Invoice.Total DESC LIMIT 1