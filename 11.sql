SELECT InvoiceId AS 'Invoice ID #', COUNT(InvoiceId) AS '# of Line Items Per ID' FROM InvoiceLine GROUP BY InvoiceId 