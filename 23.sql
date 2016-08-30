SELECT Customer.Country AS Country, SUM(Invoice.Total) AS 'Total Sales' FROM Customer
JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId 
GROUP BY Country
ORDER BY SUM(Invoice.Total) DESC