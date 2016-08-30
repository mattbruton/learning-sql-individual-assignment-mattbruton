SELECT LastName || ', ' || FirstName AS Name, BillingCountry, InvoiceId, InvoiceDate FROM Customer JOIN Invoice ON Invoice.CustomerId == Customer.CustomerId WHERE Country == 'Brazil' ORDER BY Name
