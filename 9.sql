Select * FROM
    (Select COUNT(InvoiceDate) AS '# Of Sales - 2009' FROM Invoice WHERE InvoiceDate LIKE '2009%'),
    (Select COUNT(InvoiceDate) AS '# Of Sales - 2011'  FROM Invoice WHERE InvoiceDate LIKE '2011%'),
    (Select SUM(Total) AS 'Net Sales - 2009'  From Invoice Where InvoiceDate LIKE '2009%'),
    (Select SUM(Total) AS 'Net Sales - 2011' From Invoice Where InvoiceDate LIKE '2011%')